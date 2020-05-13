class: CommandLineTool
id: taxonomy_filter_refseq.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: taxonomy_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: ancestor_name
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: output_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: tax_prefix
  doc: String to prepend to names of nodes.dmp and names.dmp
  type: string
  inputBinding:
    prefix: --tax_prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- taxonomy_filter_refseq
