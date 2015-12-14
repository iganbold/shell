#!/bin/bash
#Init structure

vars()
{
        pslogin="pslogin"
        archive="archive"
        bin="bin"
        current="current"

        #env names
        beta3="beta3"
        qa="qa"
        prod="prod"

        #vm names
        psdev="psdev"
        p00app01="p00app01"
        p00app02="p00app02"
        s00app01="s00app01"
        s00app02="s00app02"

        #server names
        psprimary="psprimary"
        psproxy="psproxy"
        psuaa="psuaa"
        samlacs="samlacs"
}

vars

mkdir $pslogin
cd $pslogin
mkdir $archive
mkdir $bin

mkdir -p $current/$beta3/$psdev/$psprimary
mkdir -p $current/$beta3/$psdev/$psproxy
mkdir -p $current/$beta3/$psdev/$psuaa
mkdir -p $current/$beta3/$psdev/$samlacs

mkdir -p $current/$qa/$s00app01/$psprimary
mkdir -p $current/$qa/$s00app01/$psproxy
mkdir -p $current/$qa/$s00app01/$psuaa
mkdir -p $current/$qa/$s00app01/$samlacs

mkdir -p $current/$qa/$s00app02/$psprimary
mkdir -p $current/$qa/$s00app02/$psproxy
mkdir -p $current/$qa/$s00app02/$psuaa
mkdir -p $current/$qa/$s00app02/$samlacs

mkdir -p $current/$prod/$p00app01/$psprimary
mkdir -p $current/$prod/$p00app01/$psproxy
mkdir -p $current/$prod/$p00app01/$psuaa
mkdir -p $current/$prod/$p00app01/$samlacs

mkdir -p $current/$prod/$p00app02/$psprimary
mkdir -p $current/$prod/$p00app02/$psproxy
mkdir -p $current/$prod/$p00app02/$psuaa
mkdir -p $current/$prod/$p00app02/$samlacs
