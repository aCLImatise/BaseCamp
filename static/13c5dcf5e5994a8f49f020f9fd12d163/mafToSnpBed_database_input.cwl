class: CommandLineTool
id: mafToSnpBed_database_input.gp.cwl
inputs:
- id: input_maf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_gp
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mafToSnpBed
- database
- input.gp
