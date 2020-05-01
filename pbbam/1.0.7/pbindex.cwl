#!/usr/bin/env cwl-runner

baseCommand:
- pbindex
class: CommandLineTool
cwlVersion: v1.0
id: pbindex
inputs:
- doc: ''
  id: in_bam
  inputBinding:
    position: 0
  type: string
