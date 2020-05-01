#!/usr/bin/env cwl-runner

baseCommand:
- rfmix2tagore.py
class: CommandLineTool
cwlVersion: v1.0
id: rfmix2tagore.py
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: Color for African blocks
  id: afr
  inputBinding:
    prefix: --afr
  type: string
- doc: Color for European blocks
  id: eur
  inputBinding:
    prefix: --eur
  type: string
- doc: Color for Native American / Asian blocks
  id: nat
  inputBinding:
    prefix: --nat
  type: string
- doc: Color for Unknown regions
  id: unk
  inputBinding:
    prefix: --unk
  type: string
- doc: Output da Vinci bed
  id: out
  inputBinding:
    prefix: --out
  type: File
