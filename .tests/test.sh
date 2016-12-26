#!/bin/sh -eu

if [ "${#}" != "1" ]; then
	echo "Error: Invalid number of arguments"
	exit 1
fi

if [ ! -d "${1}" ]; then
	echo "Error: Not a directory: ${1}"
	exit 1
fi

###
### Get devilbox path and source libs file
###
DEVILBOX_PATH="$( echo "${1}"| sed 's/\/*$//' )" # remove last slash(es): /
. "${DEVILBOX_PATH}/.tests/.lib.sh" "${DEVILBOX_PATH}"

################################################################################
#
#  B O O T S T R A P
#
################################################################################

###
### Reset .env file
###
reset_env_file

###
### Alter host ports
###
set_host_port_httpd "80"
set_host_port_mysql "33060"
set_host_port_pgsql "54320"




####################################################################################################
####################################################################################################
###
### TEST HTTPD
###
####################################################################################################
####################################################################################################

################################################################################
#
# HTTPD 1/4
#
################################################################################

###
### Docker versions to use
###
_httpd="apache-2.2"
_mysql="mariadb-10.2"
_pysql="9.6"
_php="php-fpm-7.0"

###
### Go
###
devilbox_start "${_httpd}" "${_mysql}" "${_pysql}" "${_php}" "HTTPD (1/4): ${_httpd}"
debilbox_test
devilbox_stop



################################################################################
#
# HTTPD 2/4
#
################################################################################

###
### Docker versions to use
###
_httpd="apache-2.4"
_mysql="mariadb-10.2"
_pysql="9.6"
_php="php-fpm-7.0"

###
### Go
###
devilbox_start "${_httpd}" "${_mysql}" "${_pysql}" "${_php}" "HTTPD (2/4): ${_httpd}"
debilbox_test
devilbox_stop



################################################################################
#
# HTTPD 3/4
#
################################################################################

###
### Docker versions to use
###
_httpd="nginx-stable"
_mysql="mariadb-10.2"
_pysql="9.6"
_php="php-fpm-7.0"

###
### Go
###
devilbox_start "${_httpd}" "${_mysql}" "${_pysql}" "${_php}" "HTTPD (3/4): ${_httpd}"
debilbox_test
devilbox_stop



################################################################################
#
# HTTPD 4/4
#
################################################################################

###
### Docker versions to use
###
_httpd="nginx-mainline"
_mysql="mariadb-10.2"
_pysql="9.6"
_php="php-fpm-7.0"

###
### Go
###
devilbox_start "${_httpd}" "${_mysql}" "${_pysql}" "${_php}" "HTTPD (4/4): ${_httpd}"
debilbox_test
devilbox_stop



####################################################################################################
####################################################################################################
###
### TEST PHP
###
####################################################################################################
####################################################################################################

################################################################################
#
# PHP 1/5
#
################################################################################

###
### Docker versions to use
###
_httpd="apache-2.4"
_mysql="mariadb-10.2"
_pysql="9.6"
_php="php-fpm-5.4"

###
### Go
###
devilbox_start "${_httpd}" "${_mysql}" "${_pysql}" "${_php}" "PHP (1/5): ${_php}"
debilbox_test
devilbox_stop

################################################################################
#
# PHP 2/5
#
################################################################################

###
### Docker versions to use
###
_httpd="apache-2.4"
_mysql="mariadb-10.2"
_pysql="9.6"
_php="php-fpm-5.5"

###
### Go
###
devilbox_start "${_httpd}" "${_mysql}" "${_pysql}" "${_php}" "PHP (2/5): ${_php}"
debilbox_test
devilbox_stop

################################################################################
#
# PHP 3/5
#
################################################################################

###
### Docker versions to use
###
_httpd="apache-2.4"
_mysql="mariadb-10.2"
_pysql="9.6"
_php="php-fpm-5.6"

###
### Go
###
devilbox_start "${_httpd}" "${_mysql}" "${_pysql}" "${_php}" "PHP (3/5): ${_php}"
debilbox_test
devilbox_stop

################################################################################
#
# PHP 4/5
#
################################################################################

###
### Docker versions to use
###
_httpd="apache-2.4"
_mysql="mariadb-10.2"
_pysql="9.6"
_php="php-fpm-7.0"

###
### Go
###
devilbox_start "${_httpd}" "${_mysql}" "${_pysql}" "${_php}" "PHP (4/5): ${_php}"
debilbox_test
devilbox_stop

################################################################################
#
# PHP 5/5
#
################################################################################

###
### Docker versions to use
###
_httpd="apache-2.4"
_mysql="mariadb-10.2"
_pysql="9.6"
_php="php-fpm-7.1"

###
### Go
###
devilbox_start "${_httpd}" "${_mysql}" "${_pysql}" "${_php}" "PHP (5/5): ${_php}"
debilbox_test
devilbox_stop





####################################################################################################
####################################################################################################
###
### TEST MYSQL
###
####################################################################################################
####################################################################################################

################################################################################
#
# MySQL 1/7
#
################################################################################

###
### Docker versions to use
###
_httpd="apache-2.4"
_mysql="mysql-5.5"
_pysql="9.6"
_php="php-fpm-7.0"

###
### Go
###
devilbox_start "${_httpd}" "${_mysql}" "${_pysql}" "${_php}" "MySQL (1/7): ${_mysql}"
debilbox_test
devilbox_stop

################################################################################
#
# MySQL 2/7
#
################################################################################

###
### Docker versions to use
###
_httpd="apache-2.4"
_mysql="mysql-5.6"
_pysql="9.6"
_php="php-fpm-7.0"

###
### Go
###
devilbox_start "${_httpd}" "${_mysql}" "${_pysql}" "${_php}" "MySQL (2/7): ${_mysql}"
debilbox_test
devilbox_stop

################################################################################
#
# MySQL 3/7
#
################################################################################

###
### Docker versions to use
###
_httpd="apache-2.4"
_mysql="mysql-5.7"
_pysql="9.6"
_php="php-fpm-7.0"

###
### Go
###
devilbox_start "${_httpd}" "${_mysql}" "${_pysql}" "${_php}" "MySQL (3/7): ${_mysql}"
debilbox_test
devilbox_stop

################################################################################
#
# MySQL 4/7
#
################################################################################

###
### Docker versions to use
###
_httpd="apache-2.4"
_mysql="mariadb-5.5"
_pysql="9.6"
_php="php-fpm-7.0"

###
### Go
###
devilbox_start "${_httpd}" "${_mysql}" "${_pysql}" "${_php}" "MySQL (4/7): ${_mysql}"
debilbox_test
devilbox_stop

################################################################################
#
# MySQL 5/7
#
################################################################################

###
### Docker versions to use
###
_httpd="apache-2.4"
_mysql="mariadb-10.0"
_pysql="9.6"
_php="php-fpm-7.0"

###
### Go
###
devilbox_start "${_httpd}" "${_mysql}" "${_pysql}" "${_php}" "MySQL (5/7): ${_mysql}"
debilbox_test
devilbox_stop

################################################################################
#
# MySQL 6/7
#
################################################################################

###
### Docker versions to use
###
_httpd="apache-2.4"
_mysql="mariadb-10.1"
_pysql="9.6"
_php="php-fpm-7.0"

###
### Go
###
devilbox_start "${_httpd}" "${_mysql}" "${_pysql}" "${_php}" "MySQL (6/7): ${_mysql}"
debilbox_test
devilbox_stop

################################################################################
#
# MySQL 7/7
#
################################################################################

###
### Docker versions to use
###
_httpd="apache-2.4"
_mysql="mariadb-10.2"
_pysql="9.6"
_php="php-fpm-7.0"

###
### Go
###
devilbox_start "${_httpd}" "${_mysql}" "${_pysql}" "${_php}" "MySQL (7/7): ${_mysql}"
debilbox_test
devilbox_stop
