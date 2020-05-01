#!/usr/bin/env cwl-runner

baseCommand:
- esl-alipid
class: CommandLineTool
cwlVersion: v1.0
id: esl-alipid
inputs:
- doc: ''
  id: msa_file
  inputBinding:
    position: 0
  type: string
- doc: ': specify the input MSA file is in format <s>'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': write the output MSA in format <s>  [Clustal]'
  id: out_format
  inputBinding:
    prefix: --outformat
  type: string
- doc: ': no header'
  id: noheader
  inputBinding:
    prefix: --noheader
  type: boolean
- doc: ': use DNA alphabet'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
- doc: ': use RNA alphabet'
  id: rna
  inputBinding:
    prefix: --rna
  type: boolean
- doc: ': use protein alphabet'
  id: amino
  inputBinding:
    prefix: --amino
  type: boolean
