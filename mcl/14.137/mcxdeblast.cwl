class: CommandLineTool
id: mcxdeblast.cwl
inputs:
- id: file_name
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: m9
  doc: Expect column (-m 9) input.
  type: boolean
  inputBinding:
    prefix: --m9
- id: line_mode
  doc: Output simple ID1 ID2 SCORE format.
  type: string
  inputBinding:
    prefix: --line-mode
- id: score
  doc: =<b|e|r>   Use bit scores, E-values, or bit scores normalized by hsp-length
  type: boolean
  inputBinding:
    prefix: --score
- id: sort
  doc: =<a|o>      Use alphabetic sorting (default) or occurrence.
  type: boolean
  inputBinding:
    prefix: --sort
- id: tab
  doc: Use user-supplied tab file.
  type: string
  inputBinding:
    prefix: --tab
- id: xi_dat
  doc: Strip <suf> from file-name to create output base name.
  type: string
  inputBinding:
    prefix: --xi-dat
- id: xo_dat
  doc: Add <suf> to base name.
  type: string
  inputBinding:
    prefix: --xo-dat
- id: b_cut
  doc: Ignore hits below bit score <val>
  type: string
  inputBinding:
    prefix: --bcut
- id: e_cut
  doc: Ignore hits below E-value <val>
  type: string
  inputBinding:
    prefix: --ecut
- id: r_cut
  doc: Ignore hits below raw value <val>
  type: string
  inputBinding:
    prefix: --rcut
- id: out
  doc: Output file name ('-' for STDOUT)
  type: string
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- mcxdeblast
