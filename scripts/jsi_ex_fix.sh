
fc=$(<./scripts/jsi_ex_fix_contents.txt)
start=$(sed -n 1,122p ./node_modules/react-native/React.podspec)
end=$(sed -n 124,349p ./node_modules/react-native/React.podspec)

printf "%b" "$start $fc \n $end" > ./node_modules/react-native/React.podspec
