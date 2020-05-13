class: CommandLineTool
id: mafToSnpBed_database_input.maf_input.gp.cwl
inputs:
- id: output_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mafToSnpBed
- database
- input.maf
- input.gp
