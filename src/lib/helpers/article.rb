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
            :article_uri => get_article_uri(article),
            :article_title => get_article_title(article),
            :article_author_url => get_article_author_url(article),
            :article_author_name => get_article_author_name(article),
            :article_tags => get_article_tags(article),
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
        '/img/avatars/' + article[:author_name].downcase.tr(' ', '-') +
        '-thumbnail.jpg'
    end

    def get_article_uri(article)
        article.identifier
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

    def get_article_tags(article)
        articleTags = []

        article[:tags].each_with_index do |tag, index|
            articleTags << {
                :name => tag,
                :uri => "#",
                :class => ""
            }

            tagType = article[:tag_types][index]

            # Add the type as CSS if provided
            if (!tagType.nil? && !tagType.empty?)
                articleTags.last[:class] = "article-tag-" + tagType
            end
        end

        return articleTags
    end

    def get_article_description(article)
        get_article_first_paragraph(article)
    end

    def get_article_first_paragraph(article)
        pStart = '<p>'
        pEnd = '</p>'
        content = article.compiled_content
        pos = content.index(pStart) + pStart.length
        len = content.index(pEnd) - content.index(pStart)

        return content[pos, len]
    end

end

