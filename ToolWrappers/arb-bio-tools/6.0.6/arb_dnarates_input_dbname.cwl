class: CommandLineTool
id: arb_dnarates_input_dbname.cwl
inputs:
- id: in_db_save_name
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
- arb_dnarates
- input
- dbname
