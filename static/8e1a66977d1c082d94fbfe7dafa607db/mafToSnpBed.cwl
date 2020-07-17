class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mafToSnpBed.cwl
inputs:
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input_do_tgp
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- mafToSnpBed
