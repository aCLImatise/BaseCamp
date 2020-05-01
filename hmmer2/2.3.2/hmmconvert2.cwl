#!/usr/bin/env cwl-runner

baseCommand:
- hmmconvert2
class: CommandLineTool
cwlVersion: v1.0
id: hmmconvert2
inputs:
- doc: ': convert to HMMER ASCII file (the default)'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: ': convert to HMMER binary file'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: ': convert to GCG Profile .prf format'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: ': convert to Compugen extended .eprf profile format'
  id: p
  inputBinding:
    prefix: -P
  type: boolean
- doc: ': append mode; append to <new hmm file>'
  id: a
  inputBinding:
    prefix: -A
  type: boolean
- doc: ': force mode; allow overwriting of existing files'
  id: f
  inputBinding:
    prefix: -F
  type: boolean
