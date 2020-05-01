#!/usr/bin/env cwl-runner

baseCommand:
- filterlinks
class: CommandLineTool
cwlVersion: v1.0
id: filterlinks
inputs:
- doc: ''
  id: links
  inputBinding:
    prefix: -links
  type: string
- doc: ''
  id: no_inter
  inputBinding:
    prefix: -nointer
  type: boolean
- doc: ''
  id: no_intra
  inputBinding:
    prefix: -nointra
  type: boolean
- doc: ''
  id: debug
  inputBinding:
    prefix: -debug
  type: boolean
