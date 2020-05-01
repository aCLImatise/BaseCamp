#!/usr/bin/env cwl-runner

baseCommand:
- vep_install
class: CommandLineTool
cwlVersion: v1.0
id: vep_install
inputs:
- doc: ': 99.d3e7d31'
  id: ensembl
  inputBinding:
    position: 0
  type: string
- doc: ': 99.0832337'
  id: ensembl_func_gen
  inputBinding:
    position: 1
  type: string
- doc: ': 99.441b05b'
  id: ensembl_io
  inputBinding:
    position: 2
  type: string
- doc: ': 99.642e1cd'
  id: ensembl_variation
  inputBinding:
    position: 3
  type: string
- doc: ': 99.2'
  id: ensembl_vep
  inputBinding:
    position: 4
  type: string
