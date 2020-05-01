#!/usr/bin/env cwl-runner

baseCommand:
- phandango_mapper
class: CommandLineTool
cwlVersion: v1.0
id: phandango_mapper
inputs:
- doc: Kmers file, filtered output from SEER
  id: km_ers
  inputBinding:
    position: 0
  type: string
- doc: Reference fasta file
  id: reference
  inputBinding:
    position: 1
  type: string
- doc: Output file
  id: output
  inputBinding:
    position: 2
  type: string
- doc: 'Location of bwa executable [Default: bwa]'
  id: bwa
  inputBinding:
    prefix: --bwa
  type: string
- doc: 'Directory to store temporary files [Default: cwd]'
  id: tmp_prefix
  inputBinding:
    prefix: --tmp-prefix
  type: string
- doc: 'Plot the unadjusted p-value [Default: lrt-p-value]'
  id: use_filter_p
  inputBinding:
    prefix: --use-filter-p
  type: boolean
