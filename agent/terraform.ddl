# $libdir/mcollective/agent/terraform.ddl
metadata :name        => "terraform",
         :description => "Terraform service for Choria",
         :author      => "Kevin Haefeli",
         :license     => "GPLv2",
         :version     => "1.1",
         :timeout     => 600,
         :url         => "https://github.com/khaefeli/mcollective_agent_terraform"

action "echo", :description => "Apply changes to infrastructure" do
    display :always

    input :msg,
          :prompt      => "Message",
          :description => "Your message",
          :type        => :string,
          :validation  => ".*",
          :optional    => false,
          :maxlength   => 1024

    output :msg,
        :description => "Your message",
        :display_as  => "Message",
        :default     => ""
end
