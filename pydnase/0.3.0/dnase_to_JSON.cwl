class: CommandLineTool
id: ../../../dnase_to_JSON.py_output.cwl
inputs:
- id: w
  doc: ''
  type: string
  inputBinding:
    prefix: -w
- id: i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i
- id: a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -A
- id: dnase_to_json_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: regions
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: reads
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- dnase_to_JSON.py
- output
