class: CommandLineTool
id: ct2db.cwl
inputs:
- id: in_remove_pk
  doc: "Remove pseudoknots from structure\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --removePK
- id: in_convert_to_rna
  doc: "Substitute all nucleotides with their RNA alphabet\ncounter parts, i.e. convert\
    \ to characters A, C, G, U or\nN for unknown bases.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --convertToRNA
- id: in_verbose
  doc: "Be verbose\n(default=off)\n"
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ct2db
