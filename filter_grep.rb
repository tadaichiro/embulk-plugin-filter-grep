module Embulk
  module Plugin

    class FilterExample < FilterPlugin

      Plugin.register_filter('grep', self)

      def self.transaction(config, in_schema, &control)
        task = {
          'columns' => config.param('columns', :array),
        }

        out_columns = in_schema

        puts "Extranction filter started."
        yield(task, out_columns)
        puts "Extranction filter finished."
      end

      def initialize(task, in_schema, out_schema, page_builder)
        super
        @columns = task['columns']
      end

      def close
      end

      def add(page)
        page.each do |record|
          hash = Hash[in_schema.names.zip(record)]
          @columns.each do |col|
            regEx = col['regexp']
            if hash[col['name']] =~ /#{regEx}/
              @page_builder.add(record)
            end
          end
        end
      end

      def finish
        @page_builder.finish
      end
    end

  end
end
