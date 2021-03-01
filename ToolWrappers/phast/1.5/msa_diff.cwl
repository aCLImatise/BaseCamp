class: CommandLineTool
id: msa_diff.cwl
inputs:
- id: in_format_one
  doc: "|SS|PHYLIP|MPM|MAF\nFormat of first alignment (default is to guess format\
    \ from file contents)."
  type: long?
  inputBinding:
    prefix: --format1
- id: in_format_two
  doc: "|SS|PHYLIP|MPM|MAF\nFormat of second alignment (default is to guess format\
    \ from file contents)."
  type: long?
  inputBinding:
    prefix: --format2
- id: in_alphabet
  doc: "Use given string for alphabet.  Can be used to accommodate\nnonstandard characters\
    \ (e.g., 'b' for any base or '^' for insertion\ngaps, '.' for deletion gaps)."
  type: string?
  inputBinding:
    prefix: --alphabet
- id: in_ignore_base_id
  doc: "Ignore identity of bases; consider all alphabetical characters\nequivalent\
    \ (e.g., A, C, G, T, N, X, b)."
  type: boolean?
  inputBinding:
    prefix: --ignore-base-id
- id: in_ignore_gap_type
  doc: Ignore type of gap; consider '-', '^', and '.' all equivalent.
  type: boolean?
  inputBinding:
    prefix: --ignore-gap-type
- id: in_alignment_one_dot_fa
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_alignment_two_dot_fa
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- msa_diff
