class: CommandLineTool
id: get_obsolete_term_id_vs_name_in_go.pl.cwl
inputs:
- id: in_obo_input_file
  doc: OBO input file
  type: boolean?
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- get_obsolete_term_id_vs_name_in_go.pl
