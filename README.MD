I created this playbook to install jenkins and nginx on raspberry pi (not tested yet if it can handle any build)
To use that:
1. Change host in inventory/raspberry.inventory
2.
``` 
make init
make provision
```
Now jenkins should be installed.
