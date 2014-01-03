#
# Contains information regarding an article in the website.
#
module ArticleHelper

    #
    # RENDER DATA CONSTRUCTION
    #

    def construct_article_render_data(article)
        {
            :article_avatar_alt => get_article_avatar_alt(article),
            :article_avatar_height => get_article_avatar_height(article),
            :article_avatar_width => get_article_avatar_width(article),
            :article_avatar_src => get_article_avatar_src(article),
            :article_title => get_article_title(article),
            :article_author_url => get_article_author_url(article),
            :article_author_name => get_article_author_name(article),
            :article_categories => get_article_categories(article),
            :article_description => get_article_description(article)
        }
    end

    #
    # DATA RETRIEVAL METHODS
    #

    def get_article_avatar_alt(article)
        article[:author_name] + '\'s avatar'
    end

    def get_article_avatar_height(article)
        '48'
    end

    def get_article_avatar_width(article)
        '48'
    end

    def get_article_avatar_src(article)
        ''
    end

    def get_article_title(article)
        article[:title]
    end

    def get_article_author_url(article)
        article[:author_uri]
    end

    def get_article_author_name(article)
        article[:author_name]
    end

    def get_article_categories(article)
        []
    end

    def get_article_description(article)
        ''
    end

end

