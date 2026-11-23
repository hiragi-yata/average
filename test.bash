#!/bin/bash
# SPDX-FileCopyrightText: 2026 Shuya Yata
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo ${1}行目のテスト失敗
        res=1
}

res=0

### NORMAL INPUT ###
out=$(seq 6 | ./average)
[ "$?" = 0 ]      || ng "$LINENO"
[ "${out}" = $'1.0\n1.5\n2.0\n2.5\n3.0\n4.0' ] || ng "$LINENO"

out=$(seq 6 | ./average 3)
[ "$?" = 0 ]      || ng "$LINENO"
[ "${out}" = $'1.0\n1.5\n2.0\n3.0\n4.0\n5.0' ] || ng "$LINENO"

### STRANGE INPUT ###
out=$(echo あ | ./average)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo  | ./average)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(./average asd)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(./average 0)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(./average -2)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(./average 4 3)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
