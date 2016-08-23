# Stormshield Network Security Simple template

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fremip2%2Fazure-templates%2Fmaster%2Fsns%2Fsns-simple%2Ftemplate.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a><a href="http://armviz.io/#/?load=https://raw.githubusercontent.com/remip2/azure-templates/master/sns/sns-simple/template.json" target="_blank">
  <img src="http://armviz.io/visualizebutton.png"/>
</a>

This Azure Resource Manager template deploys a SNS VM and configure a DMZ subnet.

<img src="img/topo-simple.png" alt="network topology">

* The virtual network as a public subnet facing Internet and a private subnet
* A route table is created to route trafic from the private network through the SNS appliance

## Next configuration steps:

* Setup Filtering and NAT masquerading for the Private subnet on the SNS appliance
* Deploy servers in the private subnet