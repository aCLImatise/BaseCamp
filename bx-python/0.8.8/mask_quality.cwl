#!/usr/bin/env cwl-runner

baseCommand:
- mask_quality.py
class: CommandLineTool
cwlVersion: v1.0
id: mask_quality.py
inputs:
- doc: ''
  id: input
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: output
  inputBinding:
    position: 1
  type: string
- doc: Format of input (axt or maf)
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Format of output (axt or maf)
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Character to use as mask character
  id: mask
  inputBinding:
    prefix: --mask
  type: string
- doc: Min quality allowed
  id: quality
  inputBinding:
    prefix: --quality
  type: string
- doc: base_pair or nqs
  id: type
  inputBinding:
    prefix: --type
  type: string
- doc: colon seperated list of species,len_file[,qualityfile].
  id: list
  inputBinding:
    prefix: --list
  type: string
