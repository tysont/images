*Images to quickly bootstrap different environments (eg. my development environment).*

## Local Environment Setup

To get started, you'll need to install a few dependencies:

1. Install [Vagrant](https://www.vagrantup.com/downloads.html).
2. Install either [Virtualbox](https://www.virtualbox.org/wiki/Downloads) or [VMWare Fusion](http://store.vmware.com/store/vmware/en_US/pd/productID.323690000?src=ps_570c41fd1ed2e&kw=vmware%20fusion&mt=e&utm_source=google&utm_medium=ppc&utm_campaign=GS_eBiz_Lead_AMS_US_EN_BR_E_Fusion&k_clickid=a975f09d-c345-4a6a-9256-8c47f6347f91&gclid=CjwKEAjwutXIBRDV7-SDvdiNsUoSJACIlTqlfpfHUx-ynBpjeMw1CxAZ1f_Bqp2xYo6afVe9xaTQ2hoCyMzw_wcB).

## VM Creation

To spin up a VM, just follow a few simple steps:

1. Git clone this repo.
2. Run Prepare.sh from root.
3. Navigate to the newly created Build directory.
4. Run 'vagrant up' (can optionally add --provider virtualbox or --provider vmware_fusion).

## Customizing VM Creation

To tweak the VM creation process, you can add/edit scripts in one or more of the project subdirectories for an environment:

1. Edit the scripts under Bootstrap, which control the entire provisioning lifecycle.
2. Add/edit scripts under Install, run first by the vagrant account with sudo.
3. Add/edit scripts under Configure, run second by the user account at login.
4. Add/edit scripts under Cleanup, run last by the user account at login.

You can also combine multiple environments by copying/cloning them into the Environments folder (eg. if I want separate provisioning steps for my home/work environment), although it's worth noting that script name collisions could cause issues.

*Send me a PR if you clean things up or add cool stuff please - thanks!*