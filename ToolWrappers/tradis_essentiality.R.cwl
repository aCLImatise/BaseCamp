class: CommandLineTool
id: tradis_essentiality.R.cwl
inputs:
- id: in_data_dot_tab
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
- tradis_essentiality.R
