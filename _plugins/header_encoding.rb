module Jekyll
  class GzipHeaderGenerator < Generator
    def generate(site)
      site.static_files.each do |file|
        if file.extname == ".js.gz"
          file.headers["Content-Encoding"] = "gzip"
        end
      end
    end
  end
end
