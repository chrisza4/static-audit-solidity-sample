truffle-flattener $1 > tmp.sol
# Slither cannot audit multiple SDPX license code. Doesn't matter. Let's remove all.
sed 's/SPDX-License-Identifier/nothin/' tmp.sol > to_audit.sol 
slither ./to_audit.sol
rm -rf ./tmp.sol ./to_audit.sol