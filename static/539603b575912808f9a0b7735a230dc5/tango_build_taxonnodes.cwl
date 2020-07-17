class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tango_build_taxonnodes.cwl
inputs:
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: tango
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: build
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: taxon_map
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: tax_on_nodes
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- tango
- build
- taxonnodes
