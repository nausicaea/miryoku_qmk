#!/bin/bash

d=keyboards/crkbd/keymaps/nausicaea_miryoku
mkdir $d

for f in users/manna-harbour_miryoku/config.h layouts/community/split_3x6_3/manna-harbour_miryoku/config.h keyboards/crkbd/keymaps/default/config.h
do
  echo "// copied from $f"
  cat $f
  echo
  echo
done > $d/config.h

for f in users/manna-harbour_miryoku/manna-harbour_miryoku.{h,c} keyboards/crkbd/keymaps/default/keymap.c
do
  echo "// copied from $f"
  cat $f
  echo
  echo
done > $d/keymap.c

for f in users/manna-harbour_miryoku/rules.mk keyboards/crkbd/keymaps/default/rules.mk
do
  echo "# copied from $f"
  cat $f
done > $d/rules.mk
