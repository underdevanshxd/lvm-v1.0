vps_panels_menu() {

while true; do
clear

echo "-----------------------------"
echo "VPS Panels"
echo "-----------------------------"
echo "Server VPS Panel Manager"
echo "-----------------------------"
echo
echo "1. LVM Vps Management Panel"
echo
echo "0. Back"
echo

read -p "Select option: " vps_choice

case $vps_choice in

1)
echo "Installing LVM Panel..."
git clone https://github.com/underdevanshxd/lvm-panel.git
cd lvm-panel || exit
bash install.sh

echo "Extracting SVM..."
unzip LVM-v1.0.zip

echo "Starting SVM..."
python3 lvm.py
;;

0)
break
;;

*)
echo "Invalid option!"
sleep 1
;;

esac

done

}

# 👇 THIS LINE FIXES EVERYTHING
vps_panels_menu
