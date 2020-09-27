class: CommandLineTool
id: seroba_getPneumocat_database_dir.cwl
inputs:
- id: in_se_rob_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_options
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
- seroba
- getPneumocat
- database_dir
