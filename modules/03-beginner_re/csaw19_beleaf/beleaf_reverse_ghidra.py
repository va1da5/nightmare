# Ghidra Script for solving CSAW 2019 beleaf CTF challenge
#@author 
#@category CTF
#@keybinding 
#@menupath Tools.CTF.beleaf Reverse
#@toolbar 

memory = currentProgram.getMemory()

input_length = 33
expected_outcome_start = getAddressFactory().getAddress("003014e0")
compare_start = getAddressFactory().getAddress("00301020")

expected = []
output = []

for i in range(0, input_length):
    expected.append(memory.getByte(expected_outcome_start.add(i*8)))

for item in expected:
    output.append(memory.getByte(compare_start.add(item*4)))

print(''.join([chr(dec) for dec in output]))