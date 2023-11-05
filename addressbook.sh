option=1
while [ $option -lt 6 ]
do
echo -e "1.Create new address book\n2.Insert new Record\n3.View a Record\n4.Delete a
Record\n5.Modify a Record\n6.Exit"
read option
case "$option" in
#case 1
1) echo "Enter file Name: "
read filename
if [ -e "$filename" ]
then
rm $filename
fi
touch $filename
echo -e "Name\tAddress\tMobile" >> $filename
echo -e "Enter Name"
read name
echo -e "Enter address"
read address
echo -e "Enter phone number"
read no
echo -e "$name\t$address\t$no" >> $filename
echo "Do You want to insert another record y/n"
read opt
while [ $opt != "n" ]
do
echo -e "Enter Name"
read name
echo -e "Enter address"
read address
echo -e "Enter phone number"
read no
echo -e "$name\t$address\t$no" >> $filename
echo "Do You want to insert another record y/n"
read opt
done
;;
#case 2
2)echo -e "Enter Name"
read nameecho -e "Enter address"
read address
echo -e "Enter phone number"
read no
echo -e "Name: $name\tAddress: $address\tMobile: $no" >> $filename
;;
#case 3
3)cat $filename
;;
#case 4
4) echo "Enter Mobile Number to delete a record"
read mobile
temp="temp"
grep -v $name $filename | cat >> temp
rm $filename
cat $temp | cat >> $filename
rm temp
;;
#case 4
5) echo "Enter Mobile number to Modify a record"
read mobile
read mobile
temp="temp"
grep -v $name $filename | cat >> temp
rm $filename
cat $temp | cat >> $filename
rm temp
echo -e "Enter Name"
read name
echo -e "Enter address"
read address
echo -e "Enter phone number"
read no
echo -e "$name\t$address\t$no" >> $filename
;;
esac
done
