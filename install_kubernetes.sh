#!/bin/bash

sudo kubeadm reset

#sudo kubeadm init --apiserver-advertise-address=192.168.1.26
sudo kubeadm init --pod-network-cidr=10.244.0.0/16 --apiserver-advertise-address=192.168.1.26

rm $HOME/.kube/config

sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config

sudo chown $(id -u):$(id -g) $HOME/.kube/config

export KUBECONFIG=$HOME/.kube/config

#kubectl get pods --all-namespaces

#kubectl cluster-info

#kubectl get nodes

#kubectl describe node acer4741g

#wget https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml

kubectl create -f  kube-flannel.yml

