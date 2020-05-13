class: CommandLineTool
id: mafToSnpBed_input.gp.cwl
inputs:
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_maf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input_gp
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_bed
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- mafToSnpBed
- input.gp
