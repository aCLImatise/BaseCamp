class: CommandLineTool
id: ../../../filter_ref_list.cwl
inputs:
- id: input
  doc: 'specify SAM file to be analysed (default: STDIN)'
  type: string
  inputBinding:
    prefix: --input
- id: list
  doc: tab-separated CSV file with accession numbers in first column
  type: string
  inputBinding:
    prefix: --list
- id: discard
  doc: keep or discard entries passing the filter criteria?
  type: string
  inputBinding:
    prefix: --discard
- id: verbose
  doc: print additional information to STDERR
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: print debug messages to STDERR
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_ref_list
