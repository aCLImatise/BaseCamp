class: CommandLineTool
id: convertMetaMapsToMash.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: convert_meta_map_tomas_hpl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: dbname
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- convertMetaMapsToMash.pl
