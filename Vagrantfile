Vagrant.configure("2") do |config|
  
  config.vm.box = 'precise64'
  config.vm.box_url = 'http://files.vagrantup.com/precise64.box'
  config.vm.synced_folder File.expand_path("..", Dir.pwd), "/host"

  config.vm.provision :shell, :inline => "gem install chef --version 11.6.0.rc2 --no-rdoc --no-ri --conservative"

  config.vm.provision :chef_solo do |chef|
    
    chef.log_level = :debug
    chef.cookbooks_path = File.join(File.expand_path(".", Dir.pwd), "cookbooks")


    chef.json = {
      "user" => "vagrant",
      "group" => "vagrant",
      "ffmpeg" => {
          "install_method" => :package
       }
    }

    chef.add_recipe "gifbox"

  end
end