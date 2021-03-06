module Highrise
  class SubjectField < Base

    def initialize(attributes = {}, persisted = false)
      super
      @use_cache = false
    end

    def self.use_cache(use_cache = true)
      @use_cache = use_cache
    end

    def self.find_every(options)
      if @use_cache
        @subject_field_cache ||= super
      else
        super
      end
    end

    def self.invalidate_cache
      @subject_field_cache = nil
    end
  end
end

