class: CommandLineTool
id: pat_sel_no_file_out_pat_file.cwl
inputs:
- id: in_pat_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_pat_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pat_sel
- no_file
- out_pat_file
