class: CommandLineTool
id: mafToSnpBed_database_input.maf_output.bed.cwl
inputs:
- id: input_gp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mafToSnpBed
- database
- input.maf
- output.bed
