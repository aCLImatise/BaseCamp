class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mafFrags.cwl
inputs:
- id: ref_coords
  doc: '- output actual reference genome coordinates in MAF.'
  type: boolean
  inputBinding:
    prefix: -refCoords
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: track
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- mafFrags
