class: CommandLineTool
id: calibrate.sh.cwl
inputs:
- id: in_output_file_dot_dat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_trans_term
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- calibrate.sh
