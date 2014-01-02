#
# Contains information regarding posts in the website.
#
module PostsHelper

    def get_all_posts
        @items.select { |item| !item[:type].nil? && item[:type] == "post" }
    end

    def get_all_posts_by_date
        get_all_posts.sort_by { |post| post[:date] }
    end

end
