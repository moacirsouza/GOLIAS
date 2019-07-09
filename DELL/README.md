# DELL with CotainerLinux (CoreOS)

## Using ContainerLinux (CoreOS)

The first time your system boots up you will have to create a static network configuration in order to access it from a proper terminal, instead of the emulated one available in the iDRAC dashboard:

1. Static network configuration ([Reference](https://coreos.com/os/docs/latest/network-config-with-networkd.html)):

Put the following content inside the `/etc/systemd/network` file, change the addresses where appropriate and execute a `systemctl restart systemd.networkd`:

```
[Match]
Name=eno1

[Network]
Address=xxx.xxx.xxx.xxx/xx
Gateway=xxx.xxx.xxx.xxx
DNS=xxx.xxx.xxx.xxx
```

After that you can create a cloud-config to persist some basic informations that'll be useful to facilitate your work:

2. Creating a minimal `cloud-config` with user and password `core`:

```
#cloud-config
users:
  - name: "core"
    passwd: "$6$NWWA4hPH$FTkcsNeHvCmjpo2yN.LIRQ5yfpOC.afjM1SdytezsmlvskiHnOCkHfJSDuUGVGBrp.a4QOgeCA9eLrga9YRZk/"
    groups:
      - "sudo"
coreos:
    units:
      - name: 00-eth0.network
        command: start
        content: |
          [Match]
          Name=eno1

          [Network]
          Address=xxx.xxx.xxx.xxx/xx
          Gateway=xxx.xxx.xxx.xxx
          DNS=xxx.xxx.xxx.xxx
```
