class: CommandLineTool
id: ct2db.cwl
inputs:
- id: remove_pk
  doc: Remove pseudoknots from structure (default=off)
  type: boolean
  inputBinding:
    prefix: --removePK
- id: convert_to_rna
  doc: Substitute all nucleotides with their RNA alphabet counter parts, i.e. convert
    to characters A, C, G, U or N for unknown bases. (default=off)
  type: boolean
  inputBinding:
    prefix: --convertToRNA
- id: verbose
  doc: Be verbose (default=off)
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- ct2db
