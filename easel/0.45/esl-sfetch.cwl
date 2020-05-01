#!/usr/bin/env cwl-runner

baseCommand:
- esl-sfetch
class: CommandLineTool
cwlVersion: v1.0
id: esl-sfetch
inputs:
- doc: ': output sequences to file <f> instead of stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': output sequence to file named <key>'
  id: o
  inputBinding:
    prefix: -O
  type: boolean
- doc: ': rename the sequence <s>'
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: ': reverse complement the seq(s)'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: ': specify that input file is in format <s>'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
