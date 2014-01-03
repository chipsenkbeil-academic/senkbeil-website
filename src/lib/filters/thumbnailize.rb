require 'rbconfig'

#
# Provides image-related utility functions.
#
class Thumbnailize < Nanoc::Filter

    identifier  :thumbnailize
    type        :binary

    #
    # RESIZE USING NANOC RECOMMENDATION
    #

    def run(filename, params={})
        os()

        # Only works for Mac/Linux/Solaris/BSD
        if (@os == :macosx)
            system(
                'sips',
                '--resampleHeightWidth',
                params[:height].to_s, params[:width].to_s,
                '--out',
                output_filename,
                filename
            )
        elsif (@os == :linux || @os == :unix)
            system(
                'convert',
                '-resize',
                params[:width].to_s + 'x' + params[:height].to_s + '!',
                filename,
                output_filename
            )
        end
    end

    #
    # OS IDENTIFICATION
    #

    # Snagged from http://stackoverflow.com/a/13586108
    def os
        @os ||= (
            host_os = RbConfig::CONFIG['host_os']
            case host_os
            when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
                :windows
            when /darwin|mac os/
                :macosx
            when /linux/
                :linux
            when /solaris|bsd/
                :unix
            else
                raise Error::WebDriverError, "unknown os: #{host_os.inspect}"
            end
        )
    end

end

