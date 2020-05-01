#!/usr/bin/env cwl-runner

baseCommand:
- transIndel_build_RNA.py
class: CommandLineTool
cwlVersion: v1.0
id: transindel_build_rna.py
inputs:
- doc: ''
  id: python
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: trans_in_del_build_rna_py
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: opts
  inputBinding:
    position: 2
  type: string
- doc: :reference genome used for analyzing RNAseq data (required)
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: :gtf gene annotatino file used for analyzing RNAseq data (required)
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: :splice site half bin size,  default 20
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: :minimal MapQ in SAM for support SV event, default 60
  id: mapq_cut_off
  inputBinding:
    prefix: --mapq_cutoff
  type: boolean
- doc: :maximum deletion length to be detected (10e6)
  id: max_del_length
  inputBinding:
    prefix: --max_del_length
  type: boolean
