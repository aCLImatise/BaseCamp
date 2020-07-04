class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gdal_contour.cwl
inputs:
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: three_d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -3d
- id: in_o_data
  doc: ''
  type: boolean
  inputBinding:
    prefix: -inodata
outputs: []
cwlVersion: v1.1
baseCommand:
- gdal_contour
