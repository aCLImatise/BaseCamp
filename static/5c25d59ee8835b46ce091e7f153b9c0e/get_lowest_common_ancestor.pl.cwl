class: CommandLineTool
id: get_lowest_common_ancestor.pl.cwl
inputs:
- id: in_obo_input_file
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
- id: in_a
  doc: term 1 ID
  type: boolean
  inputBinding:
    prefix: -a
- id: in_b
  doc: term 2 ID
  type: boolean
  inputBinding:
    prefix: -b
- id: in_usage
  doc: ': get_lowest_common_ancestor.pl [options]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- get_lowest_common_ancestor.pl
