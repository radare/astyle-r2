Several issues here
===================

int\nmain -> should be int<space>main

Fixed with: sed -e 's/\ +,/,/g'
