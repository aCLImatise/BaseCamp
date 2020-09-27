class: CommandLineTool
id: sigoverlap.cwl
inputs:
- id: in_output
  doc: 'Name of output file (default: stdout)'
  type: File
  inputBinding:
    prefix: -output
- id: in_verbose
  doc: print more run info
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_target
  doc: target regions file
  type: boolean
  inputBinding:
    prefix: -target
- id: in_size
  doc: genome size
  type: boolean
  inputBinding:
    prefix: -size
- id: in_about
  doc: print about message
  type: boolean
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
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- sigoverlap
