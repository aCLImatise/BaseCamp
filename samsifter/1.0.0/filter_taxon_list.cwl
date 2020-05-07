class: CommandLineTool
id: filter_taxon_list.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: discard
  doc: ''
  type: string
  inputBinding:
    prefix: --discard
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_taxon_list
