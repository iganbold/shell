#!/bin/bash
#This script copies and updates the configuration files

display()
{
        echo $1
}

vars()
{
        var_env_beta3="beta3"
        var_env_qa="QA"
        var_env_prod="PRODUCTION"
        var_vm_psdev="PSDEV"
        var_vm_s00app01="s00app01"
        var_vm_s00app02="s00app02"
        var_vm_p00app01="p00app01"
        var_vm_p00app02="p00app02"
        var_ser_psprm="PSLOGINPRIMARYSERVER"
        var_ser_pspxy="PSLOGINPROXYSERVER"
        var_ser_saml="SAMLSERVER"
        var_ser_psuaa="PSLOGINUAASERVER"

        #paths for

        #beta3 paths
        var_path_beta3_psdev_primary="$var_env_beta3/$var_vm_psdev/$var_ser_psprm"
        var_path_beta3_psdev_proxy="$var_env_beta3/$var_vm_psdev/$var_ser_pspxy"
        var_path_beta3_psdev_uaa="$var_env_beta3/$var_vm_psdev/$var_ser_psuaa"
        var_path_beta3_psdev_saml="$var_env_beta3/$var_vm_psdev/$var_ser_saml"

        #QA paths
        var_path_qa_s00app01_primary="$var_env_qa/$var_vm_s00app01/$var_ser_psprm"
        var_path_qa_s00app01_proxy="$var_env_qa/$var_vm_s00app01/$var_ser_pspxy"
        var_path_qa_s00app01_uaa="$var_env_qa/$var_vm_s00app01/$var_ser_psuaa"
        var_path_qa_s00app01_saml="$var_env_qa/$var_vm_s00app01/$var_ser_saml"

        var_path_qa_s00app02_primary="$var_env_qa/$var_vm_s00app02/$var_ser_psprm"
        var_path_qa_s00app02_proxy="$var_env_qa/$var_vm_s00app02/$var_ser_pspxy"
        var_path_qa_s00app02_uaa="$var_env_qa/$var_vm_s00app02/$var_ser_psuaa"
        var_path_qa_s00app02_saml="$var_env_qa/$var_vm_s00app02/$var_ser_saml"

        #prod paths
        var_path_prod_p00app01_primary="$var_env_prod/$var_vm_p00app01/$var_ser_psprm"
        var_path_prod_p00app01_proxy="$var_env_prod/$var_vm_p00app01/$var_ser_pspxy"
        var_path_prod_p00app01_uaa="$var_env_prod/$var_vm_p00app01/$var_ser_psuaa"
        var_path_prod_p00app01_saml="$var_env_prod/$var_vm_p00app01/$var_ser_saml"

        var_path_prod_p00app02_primary="$var_env_prod/$var_vm_p00app02/$var_ser_psprm"
        var_path_prod_p00app02_proxy="$var_env_prod/$var_vm_p00app02/$var_ser_pspxy"
        var_path_prod_p00app02_uaa="$var_env_prod/$var_vm_p00app02/$var_ser_psuaa"
        var_path_prod_p00app02_saml="$var_env_prod/$var_vm_p00app02/$var_ser_saml"

}

push_config()
{
        echo "Pushing configs to /$1"

        #push settings
        #cp $1 $2
        #cp $1 $2
        #cp $1 $2
        #cp $1 $2
}



make_path()
{
        case "$1" in
                "beta3") #display $var_env_beta3
                        case "$2" in
                                "psdev") #display $var_vm_psdev
                                        case "$3" in
                                                "primary")
                                                        #display $var_ser_psprm
                                                        push_config $var_path_beta3_psdev_primary
                                                ;;
                                                "proxy")
                                                        #display $var_ser_pspxy
                                                        push_config $var_path_beta3_psdev_proxy
                                                ;;
                                                "uaa")
                                                        #display $var_ser_psuaa
                                                        push_config $var_path_beta3_psdev_uaa
                                                ;;
                                                "saml")
                                                        #display $var_ser_saml
                                                        push_config $var_path_beta3_psdev_saml
                                                ;;
                                                *) display "Wrong SERVER"
                                        esac
                                ;;
                                *) display "Wrong VM"
                                   exit 1
                        esac
                ;;
                "qa") #display $var_env_qa
                        case "$2" in
                                "s00app01") #display $var_vm_s00app01
                                        case "$3" in
                                                "primary")
                                                        #display $var_ser_psprm
                                                        push_config $var_path_qa_s00app01_primary
                                                ;;
                                                "proxy")
                                                        #display $var_ser_pspxy
                                                        push_config $var_path_qa_s00app01_proxy
                                                ;;
                                                "uaa")
                                                        #display $var_ser_psuaa
                                                        push_config $var_path_qa_s00app01_uaa
                                                ;;
                                                "saml")
                                                        #display $var_ser_saml
                                                        push_config $var_path_qa_s00app01_saml
                                                ;;
                                                *) display "Wrong SERVER"
                                        esac
                                ;;
                                 "s00app02") display $var_vm_s00app02
                                        case "$3" in
                                                "primary")
                                                        #display $var_ser_psprm
                                                        push_config $var_path_qa_s00app02_primary
                                                ;;
                                                "proxy")
                                                        #display $var_ser_pspxy
                                                        push_config $var_path_qa_s00app02_proxy
                                                ;;
                                                "uaa")
                                                        #display $var_ser_psuaa
                                                        push_config $var_path_qa_s00app02_uaa
                                                ;;
                                                "saml")
                                                        #display $var_ser_saml
                                                        push_config $var_path_qa_s00app02_saml
                                                ;;
                                                *) display "Wrong SERVER"
                                        esac
                                ;;
                                *) display "Wrong VM"
                                   exit 1
                        esac

                ;;
                "prod") #display $var_env_prod
                        case "$2" in
                                "p00app01") #display $var_vm_p00app01
                                        case "$3" in
                                                "primary")
                                                        #display $var_ser_psprm
                                                        push_config $var_path_prod_p00app01_primary
                                                ;;
                                                "proxy")
                                                        #display $var_ser_pspxy
                                                        push_config $var_path_prod_p00app01_proxy
                                                ;;
                                                "uaa")
                                                        #display $var_ser_psuaa
                                                        push_config $var_path_prod_p00app01_uaa
                                                ;;
                                                "saml")
                                                        #display $var_ser_saml
                                                        push_config $var_path_prod_p00app01_saml
                                                ;;
                                                *) display "Wrong SERVER"
                                        esac
                                ;;
                                 "p00app02") display $var_vm_p00app02
                                        case "$3" in
                                                "primary")
                                                        #display $var_ser_psprm
                                                        push_config $var_path_prod_p00app02_primary
                                                ;;
                                                "proxy")
                                                        #display $var_ser_pspxy
                                                        push_config $var_path_prod_p00app02_proxy
                                                ;;
                                                "uaa")
                                                        #display $var_ser_psuaa
                                                        push_config $var_path_prod_p00app02_uaa
                                                ;;
                                                "saml")
                                                        #display $var_ser_saml
                                                        push_config $var_path_prod_p00app02_saml
                                                ;;
                                                *) display "Wrong SERVER"
                                        esac
                                ;;
                                *) display "Wrong VM"
                                   exit 1
                        esac

                ;;
                *) display "Wrong Enviroment"
                   exit 1
        esac

}


if [ "$#" = 3 ]
then
        vars
        make_path ${@,,}
else
        echo Please provide ENV VM SERVER-NAME.
        echo For instance: script qa p00app1 psproxy
fi
