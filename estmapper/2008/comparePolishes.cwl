#!/usr/bin/env cwl-runner

baseCommand:
- comparePolishes
class: CommandLineTool
cwlVersion: v1.0
id: comparepolishes
inputs:
- doc: ''
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: ''
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: ''
  id: a
  inputBinding:
    prefix: -a
  type: string
- doc: ''
  id: b
  inputBinding:
    prefix: -b
  type: string
- doc: ''
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: ''
  id: gff3
  inputBinding:
    prefix: -gff3
  type: boolean
