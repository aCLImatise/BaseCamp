class: CommandLineTool
id: varscan_limit.cwl
inputs:
- id: in_regions_file
  doc: '- a file of chromosome-start-stops, tab delimited'
  type: boolean?
  inputBinding:
    prefix: --regions-file
- id: in_margin_size
  doc: '- shoulder bases to allow on either side of targets [0]'
  type: boolean?
  inputBinding:
    prefix: --margin-size
- id: in_output_file
  doc: '- Output file for the matching variants'
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_not_file
  doc: '- Output file for variants NOT matching regions/positions'
  type: File?
  inputBinding:
    prefix: --not-file
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_options
  doc: --positions-file - a file of chromosome-positions, tab delimited, or VCF
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: '- Output file for the matching variants'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_not_file
  doc: '- Output file for variants NOT matching regions/positions'
  type: File?
  outputBinding:
    glob: $(inputs.in_not_file)
hints: []
cwlVersion: v1.1
baseCommand:
- varscan
- limit
