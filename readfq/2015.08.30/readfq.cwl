#!/usr/bin/env cwl-runner

baseCommand:
- readfq
class: CommandLineTool
cwlVersion: v1.0
id: readfq
inputs:
- doc: ''
  id: in_seq
  inputBinding:
    position: 0
  type: string
