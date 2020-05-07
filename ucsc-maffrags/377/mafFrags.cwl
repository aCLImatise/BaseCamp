class: CommandLineTool
id: mafFrags.cwl
inputs:
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
- id: in_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_maf
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: ref_coords
  doc: reference genome coordinates in MAF.
  type: string
  inputBinding:
    prefix: -refCoords
outputs: []
cwlVersion: v1.1
baseCommand:
- mafFrags
