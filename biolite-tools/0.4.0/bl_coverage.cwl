class: CommandLineTool
id: ../../../bl_coverage.cwl
inputs:
- id: specify_sam_file
  doc: specify SAM input file
  type: boolean
  inputBinding:
    prefix: -i
- id: sam_input_single
  doc: 'SAM input has a single reference: report coverage for each index in the reference'
  type: boolean
  inputBinding:
    prefix: '-1'
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: coverage
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bl-coverage
