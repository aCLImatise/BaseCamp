#!/usr/bin/env cwl-runner

baseCommand:
- biopet-seattleseqkit
class: CommandLineTool
cwlVersion: v1.0
id: biopet-seattleseqkit
inputs:
- doc: ''
  id: seattle_seq_kit
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: tool_name
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: tool
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: args
  inputBinding:
    position: 3
  type: string
