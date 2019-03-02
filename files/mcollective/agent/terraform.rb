# $libdir/mcollective/agent/terraform.rb
module MCollective
  module Agent
    class Terraform<RPC::Agent
      action "echo" do
        reply[:msg] = request[:msg]
      end
    end
  end
end
