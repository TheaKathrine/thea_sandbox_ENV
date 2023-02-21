declare -A Environmenttable=( ["d"]="Dev" ["t"]="Test" ["p"]="Prod")
#declare -A TABLE=(['d']="DEV" ['p']="PROD")
echo "${Environmenttable[$1]}.tfvars"
#exit 0;

TFVARS="${Environmenttable[$1]}.tfvars"

sed -e "s/<env_def>/$1/g" template.tfvars > $TFVARS
grep -E "^<${1}>" input_file | cut -c 4- >> $TFVARS