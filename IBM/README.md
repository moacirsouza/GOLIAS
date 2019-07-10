# [IBM Power System AC922](https://www.ibm.com/us-en/marketplace/power-systems-ac922) with [Fedora Atomic Host 29](https://www.projectatomic.io/blog/2018/10/fedora-atomic-28-to-29-upgrade/)

## Using Fedora Atomic Host

After installing the Operating System the first thing you have to do is to configure your network. The easiest way to do this is using the `nmcli` command, as stated [here](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/networking_guide/sec-Configuring_IP_Networking_with_nmcli) and [here](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/networking_guide/sec-network_bridging_using_the_networkmanager_command_line_tool_nmcli).

Once you're done with this part, you should update your System using the following command:

```
rpm-ostree update && systemctl reboot
```


