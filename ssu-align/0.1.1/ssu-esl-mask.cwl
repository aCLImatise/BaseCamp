#!/usr/bin/env cwl-runner

baseCommand:
- ssu-esl-mask
class: CommandLineTool
cwlVersion: v1.0
id: ssu-esl-mask
inputs:
- doc: ': output masked sequences to file <f> instead of stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': reverse: mask exclusive of <start>..<end>, not inclusive'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: ': random access: fetch seqs from ssi-indexed <sqfile>'
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: ': convert masked residues to lower case'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: ': convert masked residues to character <c>'
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: ': mask additional <n> residues beyond <start>,<end>'
  id: x
  inputBinding:
    prefix: -x
  type: string
- doc: ': specify that input file is in format <s>'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
