# frozen_string_literal: true

module WaxTasks
  # Custom WaxTasks Errors module
  module Error
    # Custom WaxTasks Error class with magenta console output
    class WaxTasksError < StandardError
      def initialize(msg = '')
        super(msg.magenta)
      end
    end

    # Custom Error:
    # Rake task expects arguments, found none
    class MissingArguments < WaxTasksError; end

    # Custom Error:
    # Site config cannot be found / parsed
    class InvalidSiteConfig < WaxTasksError; end

    # Custom Error:
    # Collection specified cannot be found / parsed in site config
    class InvalidCollection < WaxTasksError; end

    # Custom Error:
    # Collection data source type is not allowed or is an invalid file
    class InvalidSource     < WaxTasksError; end

    # Custom Error:
    # Data source file could not be found
    class MissingSource     < WaxTasksError; end

    # Custom Error:
    # Could not load collection page(s)
    class PageLoad          < WaxTasksError; end

    # Custom Error:
    # Lunr collection does not have fields specified to index
    class MissingFields     < WaxTasksError; end

    # Custom Error:
    # Page layout was not specified for a pagemaster collection
    class MissingLayout     < WaxTasksError; end

    # Custom Error:
    # Collection item does not have a required pid value
    class MissingPid        < WaxTasksError; end

    # Custom Error:
    # Collection item has a non-unique pud value
    class NonUniquePid      < WaxTasksError; end

    # Custom Error:
    # Collection page item could not be generated
    class PageFailure       < WaxTasksError; end

    # Custom Error:
    # CSV file failed to lint + could not be loaded
    class InvalidCSV        < WaxTasksError; end

    # Custom Error:
    # JSON file failed to lint + could not be loaded
    class InvalidJSON       < WaxTasksError; end

    # Custom Error:
    # YAML file failed to lint + could not be loaded
    class InvalidYAML       < WaxTasksError; end

    # Custom Error:
    # Search index in site config has no valid collections to index
    class NoSearchCollections < WaxTasksError; end

    # Custom Error:
    # Cannot find _site directory to push to GitHub
    class MissingSite < WaxTasksError; end

    # Custom Error:
    # Cannot find IIIF source image files
    class MissingIiifSrc < WaxTasksError; end
  end
end
