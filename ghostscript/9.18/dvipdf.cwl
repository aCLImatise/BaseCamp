#!/usr/bin/env cwl-runner

baseCommand:
- dvipdf
class: CommandLineTool
cwlVersion: v1.0
id: dvipdf
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: input_dvi
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: output_pdf
  inputBinding:
    position: 2
  type: string
