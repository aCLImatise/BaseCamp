#!/usr/bin/env cwl-runner

baseCommand:
- fragScaff.sh
class: CommandLineTool
cwlVersion: v1.0
id: fragscaff.sh
inputs:
- doc: ''
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: ''
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: ''
  id: a
  inputBinding:
    prefix: -a
  type: string
- doc: ''
  id: c
  inputBinding:
    prefix: -c
  type: long
- doc: ''
  id: b
  inputBinding:
    prefix: -b
  type: string
