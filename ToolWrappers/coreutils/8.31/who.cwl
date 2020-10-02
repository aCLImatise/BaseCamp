class: CommandLineTool
id: who.cwl
inputs:
- id: in_boot
  doc: time of last system boot
  type: boolean
  inputBinding:
    prefix: --boot
- id: in_dead
  doc: print dead processes
  type: boolean
  inputBinding:
    prefix: --dead
- id: in_heading
  doc: print line of column headings
  type: boolean
  inputBinding:
    prefix: --heading
- id: in_login
  doc: print system login processes
  type: boolean
  inputBinding:
    prefix: --login
- id: in_lookup
  doc: attempt to canonicalize hostnames via DNS
  type: boolean
  inputBinding:
    prefix: --lookup
- id: in_only_hostname_user
  doc: only hostname and user associated with stdin
  type: boolean
  inputBinding:
    prefix: -m
- id: in_process
  doc: print active processes spawned by init
  type: boolean
  inputBinding:
    prefix: --process
- id: in_count
  doc: all login names and number of users logged on
  type: boolean
  inputBinding:
    prefix: --count
- id: in_runlevel
  doc: print current runlevel
  type: boolean
  inputBinding:
    prefix: --runlevel
- id: in_short
  doc: print only name, line, and time (default)
  type: boolean
  inputBinding:
    prefix: --short
- id: in_time
  doc: print last system clock change
  type: boolean
  inputBinding:
    prefix: --time
- id: in_mesg
  doc: add user's message status as +, - or ?
  type: boolean
  inputBinding:
    prefix: --mesg
- id: in_users
  doc: list users logged in
  type: boolean
  inputBinding:
    prefix: --users
- id: in_message
  doc: same as -T
  type: boolean
  inputBinding:
    prefix: --message
- id: in_writable
  doc: same as -T
  type: boolean
  inputBinding:
    prefix: --writable
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- who
