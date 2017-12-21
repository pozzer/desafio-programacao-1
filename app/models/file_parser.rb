class FileParser
  require 'csv'

  def initialize(file)
    @file = file.try(:tempfile)
    @objects = []
  end

  def store
    save
    sum_total
  end

  def total
    @total
  end

  private

    def sum_total
      @total = @objects.sum{|o| o.total}
    end

    def save
      CSV.foreach(@file, headers: true, :col_sep => "\t", header_converters: :fix_header_name) do |row|
        @objects << create_object(row.to_hash)
      end if @file
    end

    def create_object(params)
      Example.create(params)
    end

    CSV::HeaderConverters[:fix_header_name] = lambda do |header|
      header.parameterize.underscore
    end

end
