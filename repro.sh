set -eux

for i in $(seq 1 10); do
    rm -fr _storyboardc$i
    xcrun ibtool --compilation-directory _storyboardc$i --minimum-deployment-target 10.0 --target-device iphone --target-device ipad --module DeterminismIsTheBest LaunchScreen.storyboard
    ./print_nibs -vdr _storyboardc$i
done

for i in $(seq 1 9); do
    for j in $(seq $(( i+1 )) 10); do
        diff -qr _storyboardc$i _storyboardc$j
    done
done