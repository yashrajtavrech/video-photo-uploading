ActiveAdmin.register Video do
  permit_params :title, :video_file

  form do |f|
    f.inputs do
      f.input :title
      f.input :video_file, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :video_file do |video|
        if video.video_file.attached?
          video_tag url_for(video.video_file), controls: true, size: '320x240'
        end
      end
    end
  end

  index do
    selectable_column
    id_column
    column :title
    column :video_file do |video|
      if video.video_file.attached?
        video_tag url_for(video.video_file), controls: true, size: '160x120'
      end
    end
    actions
  end
end

