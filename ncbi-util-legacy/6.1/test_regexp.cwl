#!/usr/bin/env cwl-runner

baseCommand:
- test_regexp
class: CommandLineTool
cwlVersion: v1.0
id: test_regexp
inputs:
- doc: 'debug: show compiled code; implies -i'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: show information about compiled pattern
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: set size of offsets vector to <n>
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: use POSIX interface
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: output store information
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: time compilation and execution
  id: t
  inputBinding:
    prefix: -t
  type: boolean
