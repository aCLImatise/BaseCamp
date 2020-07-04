class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/varscan_limit.cwl
inputs:
- id: positions_file
  doc: '- a file of chromosome-positions, tab delimited, or VCF'
  type: boolean
  inputBinding:
    prefix: --positions-file
- id: regions_file
  doc: '- a file of chromosome-start-stops, tab delimited'
  type: boolean
  inputBinding:
    prefix: --regions-file
- id: margin_size
  doc: '- shoulder bases to allow on either side of targets [0]'
  type: boolean
  inputBinding:
    prefix: --margin-size
- id: output_file
  doc: '- Output file for the matching variants'
  type: boolean
  inputBinding:
    prefix: --output-file
- id: not_file
  doc: '- Output file for variants NOT matching regions/positions'
  type: boolean
  inputBinding:
    prefix: --not-file
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: limit
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- varscan
- limit
