#!/usr/bin/env cwl-runner

baseCommand:
- '['
class: CommandLineTool
cwlVersion: v1.0
id: '['
inputs:
- doc: FILE exists and is block special
  id: b
  inputBinding:
    prefix: -b
  type: File
- doc: FILE exists and is character special
  id: c
  inputBinding:
    prefix: -c
  type: File
- doc: FILE exists and is a directory
  id: d
  inputBinding:
    prefix: -d
  type: File
- doc: FILE exists
  id: e
  inputBinding:
    prefix: -e
  type: File
- doc: FILE exists and is a regular file
  id: f
  inputBinding:
    prefix: -f
  type: File
- doc: FILE exists and is set-group-ID
  id: g
  inputBinding:
    prefix: -g
  type: File
- doc: FILE exists and is owned by the effective group ID
  id: g
  inputBinding:
    prefix: -G
  type: File
- doc: FILE exists and is a symbolic link (same as -L)
  id: h
  inputBinding:
    prefix: -h
  type: File
- doc: FILE exists and has its sticky bit set
  id: k
  inputBinding:
    prefix: -k
  type: File
- doc: FILE exists and is a symbolic link (same as -h)
  id: l
  inputBinding:
    prefix: -L
  type: File
- doc: FILE exists and is owned by the effective user ID
  id: o
  inputBinding:
    prefix: -O
  type: File
- doc: FILE exists and is a named pipe
  id: p
  inputBinding:
    prefix: -p
  type: File
- doc: FILE exists and read permission is granted
  id: r
  inputBinding:
    prefix: -r
  type: File
- doc: FILE exists and has a size greater than zero
  id: s
  inputBinding:
    prefix: -s
  type: File
- doc: FILE exists and is a socket
  id: s
  inputBinding:
    prefix: -S
  type: File
- doc: file descriptor FD is opened on a terminal
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: FILE exists and its set-user-ID bit is set
  id: u
  inputBinding:
    prefix: -u
  type: File
- doc: FILE exists and write permission is granted
  id: w
  inputBinding:
    prefix: -w
  type: File
- doc: FILE exists and execute (or search) permission is granted
  id: x
  inputBinding:
    prefix: -x
  type: File
