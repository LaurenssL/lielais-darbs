#!/bin/bash

echo "Script for running all tests automatically"
echo "------------------------------------------------"

echo "Getting python3 executable loc"
python_exec_loc=$(which python3)
if [ $? -eq 0 ]; then echo "OK"; else echo "Problem getting python3 exec location"; exit 1; fi
echo "$python_exec_loc"
echo "------------------------------------------------"


echo "Running config tests"
$python_exec_loc test_config.py
if [ $? -eq 0 ]; then echo "Test config OK"; else echo "Configuration test FAILED"; exit 1; fi

echo "Running naked tests"
$python_exec_loc test_naked.py
if [ $? -eq 0 ]; then echo "Naked test OK"; else echo "Naked test FAILED"; exit 1; fi

echo "Running worker tests"
$python_exec_loc test_worker.py
if [ $? -eq 0 ]; then echo "Worker test OK"; else echo "Work test FAILED"; exit 1; fi

echo "------------------------------------------------"
echo "All tests worked, good to go"
