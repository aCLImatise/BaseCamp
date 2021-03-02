class: CommandLineTool
id: mapsifter.cwl
inputs:
- id: in_output
  doc: 'Name of output file (default: stdout)'
  type: File?
  inputBinding:
    prefix: -output
- id: in_verbose
  doc: print more run info
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_exclude
  doc: exclude contained
  type: boolean?
  inputBinding:
    prefix: -exclude
- id: in_upper
  doc: upper bound on scores
  type: boolean?
  inputBinding:
    prefix: -upper
- id: in_lower
  doc: lower bound on scores
  type: boolean?
  inputBinding:
    prefix: -lower
- id: in_target
  doc: target regions file
  type: boolean?
  inputBinding:
    prefix: -target
- id: in_about
  doc: print about message
  type: boolean?
  inputBinding:
    prefix: -about
- id: in_bed_format_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Name of output file (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- mapsifter
