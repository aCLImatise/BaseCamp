class: CommandLineTool
id: pat_sel_simple.cwl
inputs:
- id: in_no_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_pat_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out_pat_file
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
- pat_sel_simple
