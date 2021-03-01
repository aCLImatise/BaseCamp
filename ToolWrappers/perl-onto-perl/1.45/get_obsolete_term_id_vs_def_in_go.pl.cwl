class: CommandLineTool
id: get_obsolete_term_id_vs_def_in_go.pl.cwl
inputs:
- id: in_obo_input_file
  doc: OBO input file
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_usage
  doc: ': get_obsolete_term_id_vs_def_in_go.pl [options]'
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
- get_obsolete_term_id_vs_def_in_go.pl
