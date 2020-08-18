class: CommandLineTool
id: ../../../seroba_getPneumocat_database_dir.cwl
inputs:
- id: se_rob_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- seroba
- getPneumocat
- database_dir
