class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sigoverlap.cwl
inputs:
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
- id: bed_format_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sigoverlap
