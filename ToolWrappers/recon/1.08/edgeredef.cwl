class: CommandLineTool
id: edgeredef.cwl
inputs:
- id: in_fam_def
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq_list
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_start
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- edgeredef
