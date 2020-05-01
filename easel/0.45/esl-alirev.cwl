#!/usr/bin/env cwl-runner

baseCommand:
- esl-alirev
class: CommandLineTool
cwlVersion: v1.0
id: esl-alirev
inputs:
- doc: ': specify the input MSA file is in format <s>'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': write the output MSA in format <s>'
  id: out_format
  inputBinding:
    prefix: --outformat
  type: string
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
