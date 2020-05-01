#!/usr/bin/env cwl-runner

baseCommand:
- faToTab
class: CommandLineTool
cwlVersion: v1.0
id: fatotab
inputs:
- doc: ''
  id: in_filename
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: out_filename
  inputBinding:
    position: 1
  type: string
- doc: sequence type, dna or protein, default is dna
  id: type
  inputBinding:
    prefix: -type
  type: string
- doc: "'t strip dot version off of sequence id, keep as is"
  id: keep_acc_suffix
  inputBinding:
    prefix: -keepAccSuffix
  type: boolean
