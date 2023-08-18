for file in $(find -name '*:*.pdf'); 
do 
    mv "${file}" "${file/:/}";
done
i=0;
for file in $(find -name '*:*.pdf'); 
do 
    ((i++))
    echo "$file"; 
done
if [ "$i" -eq 0 ];
then
    echo "No incorrect files";
fi