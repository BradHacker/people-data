class Person < ApplicationRecord
    mount_uploader :picture, PictureUploader
end