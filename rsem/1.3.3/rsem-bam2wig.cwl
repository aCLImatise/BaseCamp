#!/usr/bin/env cwl-runner

baseCommand:
- rsem-bam2wig
class: CommandLineTool
cwlVersion: v1.0
id: rsem-bam2wig
inputs:
- doc: ''
  id: sorted_alignment_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: wig_output
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: wiggle_name
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: no_fractional_weight
  inputBinding:
    prefix: --no-fractional-weight
  type: boolean
