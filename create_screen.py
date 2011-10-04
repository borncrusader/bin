#!/usr/bin/env python

import pexpect

screen_name = "main"

op = pexpect.spawn("screen -S %s -t '' " % screen_name)
op.expect('.*')

#first window
op.sendcontrol('a')
op.send('A')
op.sendline('cmus')
op.sendline('cmus')

op.sendcontrol('a')
op.send('c')

#second window
op.sendcontrol('a')
op.send('A')
op.sendline('pyshell')
op.sendline('python')

op.sendcontrol('a')
op.send('c')

#default to the first window
op.sendcontrol('a')
op.send('0')

#detaching from screen
op.sendcontrol('a')
op.send('d')

print "screen '%s' created" % screen_name
print "default screen's termcap might not match your requirements, so detaching..."
print "do a 'screen -r' to attach so that the shell is properly resized"
