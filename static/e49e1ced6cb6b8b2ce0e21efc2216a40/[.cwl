class: CommandLineTool
id: '[.cwl'
inputs:
- id: b
  doc: FILE exists and is block special
  type: File
  inputBinding:
    prefix: -b
- id: c
  doc: FILE exists and is character special
  type: File
  inputBinding:
    prefix: -c
- id: d
  doc: FILE exists and is a directory
  type: File
  inputBinding:
    prefix: -d
- id: e
  doc: FILE exists
  type: File
  inputBinding:
    prefix: -e
- id: f
  doc: FILE exists and is a regular file
  type: File
  inputBinding:
    prefix: -f
- id: g
  doc: FILE exists and is set-group-ID
  type: File
  inputBinding:
    prefix: -g
- id: g
  doc: FILE exists and is owned by the effective group ID
  type: File
  inputBinding:
    prefix: -G
- id: h
  doc: FILE exists and is a symbolic link (same as -L)
  type: File
  inputBinding:
    prefix: -h
- id: k
  doc: FILE exists and has its sticky bit set
  type: File
  inputBinding:
    prefix: -k
- id: l
  doc: FILE exists and is a symbolic link (same as -h)
  type: File
  inputBinding:
    prefix: -L
- id: o
  doc: FILE exists and is owned by the effective user ID
  type: File
  inputBinding:
    prefix: -O
- id: p
  doc: FILE exists and is a named pipe
  type: File
  inputBinding:
    prefix: -p
- id: r
  doc: FILE exists and read permission is granted
  type: File
  inputBinding:
    prefix: -r
- id: s
  doc: FILE exists and has a size greater than zero
  type: File
  inputBinding:
    prefix: -s
- id: s
  doc: FILE exists and is a socket
  type: File
  inputBinding:
    prefix: -S
- id: t
  doc: file descriptor FD is opened on a terminal
  type: string
  inputBinding:
    prefix: -t
- id: u
  doc: FILE exists and its set-user-ID bit is set
  type: File
  inputBinding:
    prefix: -u
- id: w
  doc: FILE exists and write permission is granted
  type: File
  inputBinding:
    prefix: -w
- id: x
  doc: FILE exists and execute (or search) permission is granted
  type: File
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- '['
