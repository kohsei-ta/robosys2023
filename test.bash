#!/bin/bash
# SpDX-FileCopyrightText: 2023 Kohsei Takaoka ta.kousei0226@gmail.com
# SPDX-License-Identifier:BSD-3-Clause

ng () {
	echo NG at LINE $1
	res1
}

res=0

### I/O TEST ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
