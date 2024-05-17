class Portfolio < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "title", "updated_at", "image", "rating"]
    end


    def self.ransackable_associations(auth_object = nil)
        ["image_attachment", "image_blob"]
    end

    # has_one_attached :image

    mount_uploader :image, ImageUploader

end
