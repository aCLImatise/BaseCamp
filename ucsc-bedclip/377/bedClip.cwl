#!/usr/bin/env cwl-runner

baseCommand:
- bedClip
class: CommandLineTool
cwlVersion: v1.0
id: bedclip
inputs:
- doc: ''
  id: input_bed
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: chrom_sizes
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: output_bed
  inputBinding:
    position: 2
  type: string
- doc: =2 - set to get list of lines clipped and why
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
