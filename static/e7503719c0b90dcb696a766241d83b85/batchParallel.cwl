class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/batchParallel.pl.cwl
inputs:
- id: f
  doc: ''
  type: File
  inputBinding:
    prefix: -f
- id: var_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_suffix_vertical_line_none
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: this
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: will
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: run
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: var_6
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: var_7
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: each
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 9
- id: provided
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: after
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: var_13
  doc: ''
  type: string
  inputBinding:
    position: 12
outputs: []
cwlVersion: v1.1
baseCommand:
- batchParallel.pl
