class: CommandLineTool
id: filter_read_conservation.cwl
inputs:
- id: input
  doc: 'specify SAM file to be analysed (default: STDIN)'
  type: string
  inputBinding:
    prefix: --input
- id: discard
  doc: keep or discard entries passing the filter criteria?
  type: string
  inputBinding:
    prefix: --discard
- id: verbose
  doc: print additional information to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: print debug messages to stderr
  type: boolean
  inputBinding:
    prefix: --debug
- id: modify
  doc: modify header by adding PG record
  type: boolean
  inputBinding:
    prefix: --modify
- id: as_dev
  doc: permitted deviation from max alignment score [5]
  type: string
  inputBinding:
    prefix: --as_dev
- id: max_tax_a
  doc: maximum number of taxa [10]
  type: long
  inputBinding:
    prefix: --max_taxa
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_read_conservation
