class: CommandLineTool
id: msa_diff.cwl
inputs:
- id: alphabet
  doc: "Use given string for alphabet.  Can be used to accommodate nonstandard characters\
    \ (e.g., 'b' for any base or '^' for insertion gaps, '.' for deletion gaps).  "
  type: string
  inputBinding:
    prefix: --alphabet
- id: ignore_base_id
  doc: Ignore identity of bases; consider all alphabetical characters equivalent (e.g.,
    A, C, G, T, N, X, b).
  type: boolean
  inputBinding:
    prefix: --ignore-base-id
- id: ignore_gap_type
  doc: Ignore type of gap; consider '-', '^', and '.' all equivalent.
  type: boolean
  inputBinding:
    prefix: --ignore-gap-type
outputs: []
cwlVersion: v1.1
baseCommand:
- msa_diff
