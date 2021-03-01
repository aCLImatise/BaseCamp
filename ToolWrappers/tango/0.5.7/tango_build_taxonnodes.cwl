class: CommandLineTool
id: tango_build_taxonnodes.cwl
inputs:
- id: in_p
  doc: ''
  type: string?
  inputBinding:
    prefix: -p
- id: in_d
  doc: ''
  type: string?
  inputBinding:
    prefix: -d
- id: in_tango
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_build
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_taxon_map
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_tax_on_nodes
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tango
- build
- taxonnodes
