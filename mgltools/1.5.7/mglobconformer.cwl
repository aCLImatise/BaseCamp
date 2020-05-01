#!/usr/bin/env cwl-runner

baseCommand:
- mglobconformer
class: CommandLineTool
cwlVersion: v1.0
id: mglobconformer
inputs:
- doc: ''
  id: ob_conformer
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: n_steps
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: geom_steps
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: file
  inputBinding:
    position: 3
  type: File
