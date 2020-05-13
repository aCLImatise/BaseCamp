class: CommandLineTool
id: bedoverlap.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bed_regions
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bed_map_locations
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output
  doc: 'Name of output file (default: stdout) '
  type: boolean
  inputBinding:
    prefix: -output
- id: about
  doc: 'print about message '
  type: boolean
  inputBinding:
    prefix: -about
outputs: []
cwlVersion: v1.1
baseCommand:
- bedoverlap
