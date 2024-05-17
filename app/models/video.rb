class Video < ApplicationRecord
    has_one_attached :video_file

    def self.ransackable_associations(auth_object = nil)
        ["video_file_attachment", "video_file_blob"]
      end

      def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "title", "updated_at"]
      end
end
