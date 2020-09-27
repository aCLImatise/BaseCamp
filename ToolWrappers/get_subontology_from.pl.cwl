class: CommandLineTool
id: get_subontology_from.pl.cwl
inputs:
- id: in_obo_input_file
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
- id: in_term_id
  doc: term ID
  type: boolean
  inputBinding:
    prefix: -t
- id: in_usage
  doc: ': get_subontology_from.pl [options]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- get_subontology_from.pl
