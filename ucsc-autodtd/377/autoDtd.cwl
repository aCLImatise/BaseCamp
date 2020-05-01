#!/usr/bin/env cwl-runner

baseCommand:
- autoDtd
class: CommandLineTool
cwlVersion: v1.0
id: autodtd
inputs:
- doc: ''
  id: in_xml
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: out_dtd
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: out_stats
  inputBinding:
    position: 2
  type: string
- doc: tree.
  id: output
  inputBinding:
    prefix: '- Output'
  type: string
- doc: tag tree.
  id: output
  inputBinding:
    prefix: '- Output'
  type: string
