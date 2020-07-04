class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/arb_dnarates_input_dbname.cwl
inputs:
- id: db_save_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_dnarates
- input
- dbname
