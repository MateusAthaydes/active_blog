ActiveAdmin.register Post do
permit_params :title, :description, :author, :updated_at

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :author
    column :updated_at
    actions
  end

  form do |f|
    f.inputs "Post Details" do
      f.input :title
      f.input :author
      f.input :description
    end
    f.actions
  end


# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
