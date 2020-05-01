#!/usr/bin/env cwl-runner

baseCommand:
- stty
class: CommandLineTool
cwlVersion: v1.0
id: stty
inputs:
- doc: set the input and output speeds to N bauds
  id: n
  inputBinding:
    position: 0
  type: string
- doc: same as -icanon
  id: c_break
  inputBinding:
    position: 0
  type: string
- doc: same as brkint ignpar istrip icrnl ixon opost isig icanon, eof and eol characters
    to their default values
  id: cooked
  inputBinding:
    position: 1
  type: string
- doc: same as echoe echoctl echoke
  id: crt
  inputBinding:
    position: 2
  type: string
- doc: same as echoe echoctl echoke -ixany intr ^c erase 0177 kill ^u
  id: dec
  inputBinding:
    position: 3
  type: string
- doc: erase and kill characters to their default values
  id: ek
  inputBinding:
    position: 0
  type: string
- doc: same as parenb -parodd cs7
  id: even_p
  inputBinding:
    position: 1
  type: string
- doc: same as -parenb -istrip -opost cs8
  id: lit_out
  inputBinding:
    position: 0
  type: string
- doc: same as -icrnl -onlcr
  id: nl
  inputBinding:
    position: 1
  type: string
- doc: same as -ignbrk -brkint -ignpar -parmrk -inpck -istrip -inlcr -igncr -icrnl
    -ixon -ixoff -icanon -opost -isig -iuclc -ixany -imaxbel -xcase min 1 time 0
  id: raw
  inputBinding:
    position: 0
  type: string
- doc: same as cread -ignbrk brkint -inlcr -igncr icrnl icanon iexten echo echoe echok
    -echonl -noflsh -ixoff -iutf8 -iuclc -ixany imaxbel -xcase -olcuc -ocrnl opost
    -ofill onlcr -onocr -onlret nl0 cr0 tab0 bs0 vt0 ff0 isig -tostop -ofdel -echoprt
    echoctl echoke -flusho, all special characters to their default values
  id: sane
  inputBinding:
    position: 1
  type: string
- doc: print all current settings in human-readable form
  id: all
  inputBinding:
    prefix: --all
  type: boolean
- doc: print all current settings in a stty-readable form
  id: save
  inputBinding:
    prefix: --save
  type: boolean
- doc: open and use the specified DEVICE instead of stdin
  id: file
  inputBinding:
    prefix: --file
  type: string
- doc: same as icanon
  id: c_break
  inputBinding:
    prefix: -cbreak
  type: boolean
- doc: same as raw
  id: cooked
  inputBinding:
    prefix: -cooked
  type: boolean
- doc: same as -parenb cs8
  id: even_p
  inputBinding:
    prefix: -evenp
  type: boolean
- doc: same as parenb istrip opost cs7
  id: lit_out
  inputBinding:
    prefix: -litout
  type: boolean
- doc: same as icrnl -inlcr -igncr onlcr -ocrnl -onlret
  id: nl
  inputBinding:
    prefix: -nl
  type: boolean
- doc: as parenb istrip cs7
  id: pass8
  inputBinding:
    prefix: -pass8
  type: string
- doc: same as cooked
  id: raw
  inputBinding:
    prefix: -raw
  type: boolean
