#!/usr/bin/env bash
service openvswitch-switch start

/usr/share/openvswitch/scripts/ovs-ctl start
ovs-vsctl set-manager ptcp:6640

bash

service openvswitch-switch stop
