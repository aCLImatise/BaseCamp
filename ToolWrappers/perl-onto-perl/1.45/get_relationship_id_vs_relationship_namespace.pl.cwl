class: CommandLineTool
id: ../../../get_relationship_id_vs_relationship_namespace.pl.cwl
inputs:
- id: in_obo_input_file
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
- id: in_usage
  doc: ': get_relationship_id_vs_relationship_namespace.pl [options]'
  type: string
  inputBinding:
    position: 0
- id: in_options
  doc: ':'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- get_relationship_id_vs_relationship_namespace.pl
