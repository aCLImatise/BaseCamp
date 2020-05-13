class: CommandLineTool
id: mapsifter.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bed_format_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output
  doc: 'Name of output file (default: stdout) '
  type: boolean
  inputBinding:
    prefix: -output
- id: verbose
  doc: 'print more run info '
  type: boolean
  inputBinding:
    prefix: -verbose
- id: exclude
  doc: 'exclude contained '
  type: boolean
  inputBinding:
    prefix: -exclude
- id: upper
  doc: 'upper bound on scores '
  type: boolean
  inputBinding:
    prefix: -upper
- id: lower
  doc: 'lower bound on scores '
  type: boolean
  inputBinding:
    prefix: -lower
- id: target
  doc: 'target regions file '
  type: boolean
  inputBinding:
    prefix: -target
- id: about
  doc: 'print about message '
  type: boolean
  inputBinding:
    prefix: -about
outputs: []
cwlVersion: v1.1
baseCommand:
- mapsifter
