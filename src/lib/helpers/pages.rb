#
# Contains information regarding pages in the website.
#
module PagesHelper

    def get_all_pages
        @items.select { |item| !item[:kind].nil? && item[:kind] == "page" }
    end

    def get_all_pages_in_order
        get_all_pages.sort_by { |page| page[:index] }
    end

end

