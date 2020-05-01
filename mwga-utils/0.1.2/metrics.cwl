#!/usr/bin/env cwl-runner

baseCommand:
- metrics
class: CommandLineTool
cwlVersion: v1.0
id: metrics
inputs:
- doc: 'Prefix for output wig files [default: metrics]'
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: 'Manually specify the number of assemblies in the alignment; if not, it is
    computed from the MAF [default: 0]'
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: 'Number of threads to use [default: 1].'
  id: t
  inputBinding:
    prefix: -t
  type: string
