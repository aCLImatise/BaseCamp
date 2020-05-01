#!/usr/bin/env cwl-runner

baseCommand:
- pinky
class: CommandLineTool
cwlVersion: v1.0
id: pinky
inputs:
- doc: long format output for the specified USERs
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: the user's home directory and shell in long format
  id: b
  inputBinding:
    prefix: -b
  type: string
- doc: the user's project file in long format
  id: h
  inputBinding:
    prefix: -h
  type: string
- doc: the user's plan file in long format
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: short format output, this is the default
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: the line of column headings in short format
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: the user's full name in short format
  id: w
  inputBinding:
    prefix: -w
  type: string
- doc: the user's full name and remote host in short format
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: the user's full name, remote host and idle time in short format
  id: q
  inputBinding:
    prefix: -q
  type: string
