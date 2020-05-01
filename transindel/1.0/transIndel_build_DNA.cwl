#!/usr/bin/env cwl-runner

baseCommand:
- transIndel_build_DNA.py
class: CommandLineTool
cwlVersion: v1.0
id: transindel_build_dna.py
inputs:
- doc: ''
  id: python
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: trans_in_del_build_dna_py
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: opts
  inputBinding:
    position: 2
  type: string
- doc: :minimal MapQ in SAM for support SV event, default 15
  id: mapq_cut_off
  inputBinding:
    prefix: --mapq_cutoff
  type: boolean
- doc: :maximum deletion length to be detected (10e6)
  id: max_del_length
  inputBinding:
    prefix: --max_del_length
  type: boolean
