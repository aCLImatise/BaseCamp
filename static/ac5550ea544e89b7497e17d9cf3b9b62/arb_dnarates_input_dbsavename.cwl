class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/arb_dnarates_input_dbsavename.cwl
inputs:
- id: arb_dna_rates
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: dbname
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: db_save_name
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_dnarates
- input
- dbsavename
