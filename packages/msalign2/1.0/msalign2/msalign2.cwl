class: CommandLineTool
id: msalign2.cwl
inputs:
- id: in_e
  doc: ''
  type: boolean
  inputBinding:
    prefix: -e
- id: in_two
  doc: ''
  type: boolean
  inputBinding:
    prefix: '-2'
- id: in_one
  doc: ''
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in_ms_align
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_lc_ms_dataset_one_filename
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_lc_ms_dataset_two_filename
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- msalign2
