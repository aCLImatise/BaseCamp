class: CommandLineTool
id: ../../../missing_regions.cwl
inputs:
- id: maf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- missing_regions
