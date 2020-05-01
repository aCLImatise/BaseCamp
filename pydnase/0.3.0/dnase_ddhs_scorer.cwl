#!/usr/bin/env cwl-runner

baseCommand:
- dnase_ddhs_scorer.py
class: CommandLineTool
cwlVersion: v1.0
id: dnase_ddhs_scorer.py
inputs:
- doc: The set of BED files you wish to annotate with dDHS scores
  id: regions
  inputBinding:
    position: 0
  type: string
- doc: The DHSs belonging to the Treatment
  id: treat_dhs
  inputBinding:
    position: 1
  type: string
- doc: The DHSs belonging to the control
  id: control_dhs
  inputBinding:
    position: 2
  type: string
- doc: The BAM file containing the Treatment DNase-seq data
  id: reads_treat
  inputBinding:
    position: 3
  type: string
- doc: The BAM file containing the Control DNase-seq data
  id: reads_control
  inputBinding:
    position: 4
  type: string
- doc: filename to write the output to
  id: output
  inputBinding:
    position: 5
  type: string
- doc: 'low RAM mode (disables caching) (Default: False)'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: 'ATAC-seq mode (default: False)'
  id: a
  inputBinding:
    prefix: -A
  type: boolean
