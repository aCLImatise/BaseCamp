class: CommandLineTool
id: make_decoy.rb.cwl
inputs:
- id: in_output
  doc: An explicitly named output file.
  type: File?
  inputBinding:
    prefix: --output
- id: in_db_length
  doc: Number of sequences to generate [0]
  type: long?
  inputBinding:
    prefix: --db-length
- id: in_prefix_string
  doc: String to prepend to sequence ids [decoy_]
  type: string?
  inputBinding:
    prefix: --prefix-string
- id: in_reverse_only
  doc: Just reverse sequences. Dont try to randomize. Ignores -L [false]
  type: boolean?
  inputBinding:
    prefix: --reverse-only
- id: in_id_regex
  doc: Regex for finding IDs. If reverse-only is used then this will be used to find
    ids and prepend with the decoy string. Default .*?\|(.*?)[ \|] [.*?\|(.*?)[ \|]]
  type: string?
  inputBinding:
    prefix: --id-regex
- id: in_append
  doc: Append input sequences to the generated database [false]
  type: boolean?
  inputBinding:
    prefix: --append
- id: in_real_db_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: An explicitly named output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- make_decoy.rb
