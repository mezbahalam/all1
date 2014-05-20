ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    div :class => "blank_slate_container", :id => "dashboard_default_message" do
      # span :class => "blank_slate" do
      #   span I18n.t("active_admin.dashboard_welcome.welcome")
      #   small I18n.t("active_admin.dashboard_welcome.call_to_action")
      # end
      section "Recent Offenders" do
        table_for Offender.order("created_at desc").limit(10) do
          column :image do |offender|
            image_tag offender.image_url(:thumb) if offender.image?
          end
          column :name
          column :age
          column :address
          column :mobile_no
          column :gender
          column :occupation
          column :religion
          column :educational_background
          column :crimes
          column :father_name
          column :family_income
          column :created_at
        end
        strong { link_to "View All Offenders", admin_offenders_path }
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
