class: CommandLineTool
id: tripaille_db_tune.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- db
- tune
