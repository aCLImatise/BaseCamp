class: CommandLineTool
id: bedoverlap.cwl
inputs:
- id: in_output
  doc: 'Name of output file (default: stdout)'
  type: File?
  inputBinding:
    prefix: -output
- id: in_about
  doc: print about message
  type: boolean?
  inputBinding:
    prefix: -about
- id: in_bed_regions
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bed_map_locations
  doc: ''
  type: string
  inputBinding:
    position: 1
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
- bedoverlap
