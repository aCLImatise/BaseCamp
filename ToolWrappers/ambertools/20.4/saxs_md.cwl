class: CommandLineTool
id: saxs_md.cwl
inputs:
- id: in_solvent
  doc: pdb file of the solvent
  type: boolean?
  inputBinding:
    prefix: --solvent
- id: in_q_cut
  doc: momentum transfer q cutoff [default 1.0 A^-1]
  type: boolean?
  inputBinding:
    prefix: --qcut
- id: in_dq
  doc: q spacing [default 0.01 A^-1]
  type: boolean?
  inputBinding:
    prefix: --dq
- id: in_cut_off
  doc: "generate a box with buffer=cutoff [default 10A]. Only keeping solvent molecules\n\
    within this box for SAXS calculation"
  type: boolean?
  inputBinding:
    prefix: --cutoff
- id: in_tight
  doc: use tighter convergence criteria for Lebedev quadrature
  type: boolean?
  inputBinding:
    prefix: --tight
- id: in_anom_f
  doc: "f' for anomalous scattering, used for ASAXS calculation,\ncurrently only support\
    \ Rb+, Sr2+ and Br- [default 0: off-edge]"
  type: boolean?
  inputBinding:
    prefix: --anom_f
- id: in_expl_i
  doc: flag for accounting for explicit H atoms in pdb file
  type: boolean?
  inputBinding:
    prefix: --expli
- id: in_corrected
  doc: "correction d for bulk density difference between the blank and sample simulation\n\
    the excess density will be g = (1-d)rho_sample - rho_blank"
  type: boolean?
  inputBinding:
    prefix: --corrected
- id: in_b_cut_off
  doc: minimum distance between the solvent and solute to apply the above correction
  type: boolean?
  inputBinding:
    prefix: --bcutoff
- id: in_exper
  doc: "experiment data file to read q from, once specified this overrides dq and\
    \ qcut\nExpect the first column is q (A^-1)"
  type: boolean?
  inputBinding:
    prefix: --exper
- id: in_output
  doc: output file
  type: File?
  inputBinding:
    prefix: --output
- id: in_system
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --system
- id: in_i
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_saxs_md
  doc: -i   --system       pdb file of the solute
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- saxs_md
