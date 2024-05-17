ActiveAdmin.register Portfolio do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :image, :rating


  # show do
  #   attributes_table do
  #     row :title
  #     # row :image do |portfolio|
  #     #   image_tag portfolio.image.image_url, size: "50x50"
  #     # end
  #   end
  # end
end
