class: CommandLineTool
id: sigoverlap.cwl
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
- id: target
  doc: 'target regions file '
  type: boolean
  inputBinding:
    prefix: -target
- id: size
  doc: 'genome size '
  type: boolean
  inputBinding:
    prefix: -size
- id: about
  doc: 'print about message '
  type: boolean
  inputBinding:
    prefix: -about
outputs: []
cwlVersion: v1.1
baseCommand:
- sigoverlap
