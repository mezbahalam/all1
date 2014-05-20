ActiveAdmin.register Offender do
  index do
    column :image do |offender|
      image_tag offender.image_url(:thumb) if offender.image?
    end
    column :name
    column :age
    column :address
    column :mobile_no
    column :occupation
    column :crimes
    column :father_name
    default_actions
  end
  active_admin_import :validate => false
  
  index :as => :grid do |offender|
    link_to(image_tag(offender.image_url(:thumb)), admin_offender_path(offender))
  end
end
