class: CommandLineTool
id: get_term_local_neighbourhood.pl.cwl
inputs:
- id: in_obo_input_file
  doc: OBO input file
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_term_id
  doc: term ID
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_relationship_type
  doc: relationship type
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_usage
  doc: ': get_term_local_neighbourhood.pl [options]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- get_term_local_neighbourhood.pl
