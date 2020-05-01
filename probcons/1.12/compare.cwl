#!/usr/bin/env cwl-runner

baseCommand:
- compare
class: CommandLineTool
cwlVersion: v1.0
id: compare
inputs:
- doc: ''
  id: score
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: test_alignment
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: reference_alignment
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: bali_base_an_not_file
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: col
  inputBinding:
    prefix: -col
  type: boolean
- doc: ''
  id: core
  inputBinding:
    prefix: -core
  type: boolean
- doc: ''
  id: caps
  inputBinding:
    prefix: -caps
  type: boolean
- doc: ''
  id: an_not
  inputBinding:
    prefix: -annot
  type: File
