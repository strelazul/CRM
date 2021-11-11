ActiveAdmin.register Customer do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :full_name, :phone_number, :email_address, :notes, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:full_name, :phone_number, :eamil_address, :notes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :image, as: :file
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
    end
    f.actions
  end

  show do
    attributes_table do
      row :full_name
      row :image do |ad|
        image_tag url_for(ad.image)
      end
      row :phone_number
      row :email_address
      row :notes
    end
  end
end
