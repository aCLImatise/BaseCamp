class: CommandLineTool
id: dnase_to_JSON.py_output.cwl
inputs:
- id: in_a
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_i
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_w
  doc: ''
  type: long?
  inputBinding:
    prefix: -w
- id: in_dnase_to_json_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_regions
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_reads
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dnase_to_JSON.py
- output
