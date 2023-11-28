#!/bin/bash -xv
# SpDX-FileCopyrightText: 2023 Kohsei Takaoka ta.kousei0226@gmail.com
# SPDX-License-Identifier:BSD-3-Clause

ng () {
	echo NG at LINE $1
	res=1
}

res=0

### I/O TEST ###
out=($(seq 5 | ./plus))
[ "${out[0]}" = "[1, 2, 3, 4, 5] = 15" ] || ng ${LINENO}
[ "${out[1]}" = "[-1, -2, -3, -4, -5] = -15" ] || ng ${LINENO}
[ "${out[2]}" = "[1, 2, 3, 4, 5] = 120" ] || ng ${LINENO}
[ "${out[3]}" = "[1, 2, 3, 4, 5] = 0.0083333333" ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ]	  || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo  | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
