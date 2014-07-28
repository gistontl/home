require 'digest/md5'

module Jekyll
  module DigestFilter
    def md5digest(input)
      Digest::MD5.hexdigest(input)
    end
  end
end

Liquid::Template.register_filter(Jekyll::DigestFilter)
