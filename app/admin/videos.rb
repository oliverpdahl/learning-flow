# frozen_string_literal: true

ActiveAdmin.register Video do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :content_block_id, :creator, :resource, :link
  #
  # or
  #
  # permit_params do
  #   permitted = [:text, :content_block_id, :creator, :resource, :type, :link, :img_link, :img_creator, :img_resource]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
