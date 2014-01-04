#
# Contains information regarding a project on the website.
#
module ProjectHelper

    #
    # PROJECT RETRIEVAL METHODS
    #

    def projects
        @items.select { |item| item[:kind] == 'project' }
    end

    def sorted_projects
        projects.sort_by do |a|
            attribute_to_time(a[:created_at])
        end.reverse
    end

    #
    # RENDER DATA CONSTRUCTION
    #

    def construct_project_render_data(project)
        {
            :project_icon_alt => get_project_icon_alt(project),
            :project_icon_height => get_project_icon_height(project),
            :project_icon_width => get_project_icon_width(project),
            :project_icon_src => get_project_icon_src(project),
            :project_uri => get_project_uri(project),
            :project_title => get_project_title(project),
            :project_author_url => get_project_author_url(project),
            :project_author_name => get_project_author_name(project),
            :project_tags => get_project_tags(project),
            :project_description => get_project_description(project)
        }
    end

    #
    # DATA RETRIEVAL METHODS
    #

    def get_project_icon_alt(project)
        project[:title] + '\'s main icon'
    end

    def get_project_icon_height(project)
        '48'
    end

    def get_project_icon_width(project)
        '48'
    end

    def get_project_icon_src(project)
        '/img/projects/' + project[:title].downcase.tr(' ', '-') +
        '-thumbnail.jpg'
    end

    def get_project_uri(project)
        project.identifier
    end

    def get_project_title(project)
        project[:title]
    end

    def get_project_author_url(project)
        project[:author_uri]
    end

    def get_project_author_name(project)
        project[:author_name]
    end

    def get_project_tags(project)
        projectTags = []

        project[:tags].each_with_index do |tag, index|
            projectTags << {
                :name => tag,
                :uri => "#",
                :class => ""
            }

            tagType = project[:tag_types][index]

            # Add the type as CSS if provided
            if (!tagType.nil? && !tagType.empty?)
                projectTags.last[:class] = "project-tag-" + tagType
            end
        end

        return projectTags
    end

    def get_project_description(project)
        get_project_first_paragraph(project)
    end

    def get_project_first_paragraph(project)
        pStart = '<p>'
        pEnd = '</p>'
        content = project.compiled_content
        pos = content.index(pStart) + pStart.length
        len = content.index(pEnd) - content.index(pStart)

        return content[pos, len]
    end

end

