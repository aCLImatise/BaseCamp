class: CommandLineTool
id: varscan_limit.cwl
inputs:
- id: positions_file
  doc: of chromosome-positions, tab delimited, or VCF
  type: File
  inputBinding:
    prefix: --positions-file
- id: regions_file
  doc: of chromosome-start-stops, tab delimited
  type: File
  inputBinding:
    prefix: --regions-file
- id: margin_size
  doc: to allow on either side of targets [0]
  type: string
  inputBinding:
    prefix: --margin-size
- id: output_file
  doc: for the matching variants
  type: File
  inputBinding:
    prefix: --output-file
- id: not_file
  doc: for variants NOT matching regions/positions
  type: File
  inputBinding:
    prefix: --not-file
outputs: []
cwlVersion: v1.1
baseCommand:
- varscan
- limit
