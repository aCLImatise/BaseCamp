class: CommandLineTool
id: mcxdeblast.cwl
inputs:
- id: in_m_nine
  doc: Expect column (-m 9) input.
  type: boolean?
  inputBinding:
    prefix: --m9
- id: in_line_mode
  doc: Output simple ID1 ID2 SCORE format.
  type: long?
  inputBinding:
    prefix: --line-mode
- id: in_score
  doc: "Use bit scores, E-values,\nor bit scores normalized by hsp-length"
  type: long?
  inputBinding:
    prefix: --score
- id: in_sort
  doc: Use alphabetic sorting (default) or occurrence.
  type: string?
  inputBinding:
    prefix: --sort
- id: in_tab
  doc: Use user-supplied tab file.
  type: File?
  inputBinding:
    prefix: --tab
- id: in_xi_dat
  doc: Strip <suf> from file-name to create output base name.
  type: File?
  inputBinding:
    prefix: --xi-dat
- id: in_xo_dat
  doc: Add <suf> to base name.
  type: string?
  inputBinding:
    prefix: --xo-dat
- id: in_b_cut
  doc: Ignore hits below bit score <val>
  type: string?
  inputBinding:
    prefix: --bcut
- id: in_e_cut
  doc: Ignore hits below E-value <val>
  type: string?
  inputBinding:
    prefix: --ecut
- id: in_r_cut
  doc: Ignore hits below raw value <val>
  type: string?
  inputBinding:
    prefix: --rcut
- id: in_out
  doc: Output file name ('-' for STDOUT)
  type: File?
  inputBinding:
    prefix: --out
- id: in_based_oth_dr
  doc: '[to be read by mcxassemble]'
  type: string
  inputBinding:
    position: 0
- id: in_based_ot_raw
  doc: '[to be read by mcxassemble]'
  type: string
  inputBinding:
    position: 1
- id: in_based_ot_map
  doc: '[to be read by mcxassemble]'
  type: string
  inputBinding:
    position: 2
- id: in_based_ot_tab
  doc: '[to be read by clmformat]'
  type: string
  inputBinding:
    position: 3
- id: in_base_do_terr
  doc: '[error log]'
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_xi_dat
  doc: Strip <suf> from file-name to create output base name.
  type: File?
  outputBinding:
    glob: $(inputs.in_xi_dat)
- id: out_out
  doc: Output file name ('-' for STDOUT)
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- mcxdeblast
