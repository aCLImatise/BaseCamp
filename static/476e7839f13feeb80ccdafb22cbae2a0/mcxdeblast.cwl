class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mcxdeblast.cwl
inputs:
- id: m_nine
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
  doc: Use bit scores, E-values, or bit scores normalized by hsp-length
  type: string
  inputBinding:
    prefix: --score
- id: sort
  doc: Use alphabetic sorting (default) or occurrence.
  type: string
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
- id: based_oth_dr
  doc: '[to be read by mcxassemble]'
  type: string
  inputBinding:
    position: 0
- id: based_ot_raw
  doc: '[to be read by mcxassemble]'
  type: string
  inputBinding:
    position: 1
- id: based_ot_map
  doc: '[to be read by mcxassemble]'
  type: string
  inputBinding:
    position: 2
- id: based_ot_tab
  doc: '[to be read by clmformat]'
  type: string
  inputBinding:
    position: 3
- id: base_do_terr
  doc: '[error log]'
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- mcxdeblast
