class: CommandLineTool
id: pat_sel_in_pat_file.cwl
inputs:
- id: in_pat_sel
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_no_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_pat_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_out_pat_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pat_sel
- in_pat_file
