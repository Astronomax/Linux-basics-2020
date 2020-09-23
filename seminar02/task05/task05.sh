#! /bin/bash
sed -e s/'\bname='/name=Anton/ -e s/lastname=/lastname=Kuznets/ file.property
