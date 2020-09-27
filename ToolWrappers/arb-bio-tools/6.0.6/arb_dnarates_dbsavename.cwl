class: CommandLineTool
id: arb_dnarates_dbsavename.cwl
inputs:
- id: in_arb_dna_rates
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dbname
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_db_save_name
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
- arb_dnarates
- dbsavename
