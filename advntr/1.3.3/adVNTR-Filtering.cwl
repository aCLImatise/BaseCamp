#!/usr/bin/env cwl-runner

baseCommand:
- adVNTR-Filtering
class: CommandLineTool
cwlVersion: v1.0
id: advntr-filtering
inputs:
- doc: ''
  id: sequences_fa
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: keywords_txt
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: output_txt
  inputBinding:
    position: 2
  type: string
