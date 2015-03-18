class gbp::gbp_neutron_ml2 () {

   neutron_plugin_ml2 {
     'ml2/type_drivers': value => "opflex,local,flat,vlan,gre,vxlan";
     'ml2/tenant_network_types': value => "vlan";
     'ml2/mechanism_drivers': value => "apic_gbp,openvswitch";
     'ovs/local_ip': value => hiera('CONFIG_CONTROLLER_HOST');
     'ovs/integration_bridge': value => "br-int";
     'ovs/enable_tunneling': value => "False";
     'agent/polling_interval': value => "2";
     'agent/l2_population': value => "False";
     'agent/arp_responder': value => "False";
   }

}
