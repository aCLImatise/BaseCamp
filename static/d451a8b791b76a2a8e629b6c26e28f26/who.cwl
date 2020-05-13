class: CommandLineTool
id: who.cwl
inputs:
- id: all
  doc: as -b -d --login -p -r -t -T -u
  type: string
  inputBinding:
    prefix: --all
- id: boot
  doc: of last system boot
  type: string
  inputBinding:
    prefix: --boot
- id: dead
  doc: dead processes
  type: string
  inputBinding:
    prefix: --dead
- id: heading
  doc: line of column headings
  type: string
  inputBinding:
    prefix: --heading
- id: login
  doc: system login processes
  type: string
  inputBinding:
    prefix: --login
- id: lookup
  doc: to canonicalize hostnames via DNS
  type: string
  inputBinding:
    prefix: --lookup
- id: m
  doc: hostname and user associated with stdin
  type: string
  inputBinding:
    prefix: -m
- id: process
  doc: active processes spawned by init
  type: string
  inputBinding:
    prefix: --process
- id: count
  doc: login names and number of users logged on
  type: string
  inputBinding:
    prefix: --count
- id: runlevel
  doc: current runlevel
  type: string
  inputBinding:
    prefix: --runlevel
- id: short
  doc: only name, line, and time (default)
  type: string
  inputBinding:
    prefix: --short
- id: time
  doc: last system clock change
  type: string
  inputBinding:
    prefix: --time
- id: mesg
  doc: user's message status as +, - or ?
  type: string
  inputBinding:
    prefix: --mesg
- id: users
  doc: users logged in
  type: string
  inputBinding:
    prefix: --users
- id: message
  doc: as -T
  type: string
  inputBinding:
    prefix: --message
- id: writable
  doc: as -T
  type: string
  inputBinding:
    prefix: --writable
outputs: []
cwlVersion: v1.1
baseCommand:
- who
