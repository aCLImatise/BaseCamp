class: CommandLineTool
id: pat_sel_no_file_in_pat_file.cwl
inputs:
- id: in_out_pat_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pat_sel
- no_file
- in_pat_file
