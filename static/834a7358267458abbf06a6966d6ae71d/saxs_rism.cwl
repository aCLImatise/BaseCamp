class: CommandLineTool
id: saxs_rism.cwl
inputs:
- id: in_solute
  doc: pdb file of the solute
  type: boolean?
  inputBinding:
    prefix: --solute
- id: in_conc_ion
  doc: bulk concentration of salt [M]
  type: boolean?
  inputBinding:
    prefix: --conc_ion
- id: in_conc_wat
  doc: water concentration [default 55.34M]
  type: boolean?
  inputBinding:
    prefix: --conc_wat
- id: in_q_cut
  doc: momentum transfer q cutoff [default 0.5 A^-1]
  type: boolean?
  inputBinding:
    prefix: --qcut
- id: in_dq
  doc: q spacing [default 0.01 A^-1]
  type: boolean?
  inputBinding:
    prefix: --dq
- id: in_cut_off
  doc: distance cutoff [default 20 A]
  type: boolean?
  inputBinding:
    prefix: --cutoff
- id: in_anom_f
  doc: "f' of atomic scattering factor, used for ASAXS calculation,\ncurrently only\
    \ applied to Rb+, Sr2+ and Br- [default 0: off-edge]"
  type: boolean?
  inputBinding:
    prefix: --anom_f
- id: in_exper
  doc: "the experimental data file to read q from, once specified this overrides dq\
    \ and qcut\nexpect the first column is q (A^-1)"
  type: boolean?
  inputBinding:
    prefix: --exper
- id: in_expl_i
  doc: flag for accounting for explicit H atoms in pdb file
  type: boolean?
  inputBinding:
    prefix: --expli
- id: in_excl_v
  doc: flag for merging those contribution of the grid points inside the excluded
    volume of the solute into the solute
  type: boolean?
  inputBinding:
    prefix: --exclV
- id: in_decomp
  doc: flag for decomposing SAXS intensity into site contributions (lead to 2-5x computational
    time)
  type: boolean?
  inputBinding:
    prefix: --decomp
- id: in_phase
  doc: output phase and error analysis instead of partial intensities
  type: boolean?
  inputBinding:
    prefix: --phase
- id: in_tight
  doc: flag for using tighter convergence criteria for Lebedev quadrature (expect
    more time)
  type: boolean?
  inputBinding:
    prefix: --tight
- id: in_off_cut_off
  doc: flag for turning off cutoff, using all grid points for the calculation
  type: boolean?
  inputBinding:
    prefix: --off_cutoff
- id: in_b_factor
  doc: using B-factor in the PDB file to account for solute flexibility
  type: boolean?
  inputBinding:
    prefix: --bfactor
- id: in_output
  doc: output file
  type: File?
  inputBinding:
    prefix: --output
- id: in_grid_dir
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --grid_dir
- id: in_g
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_saxs_rism
  doc: -g   --grid_dir     folder where all the rism3d output found (expecting *.dx
    files there)
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
- saxs_rism
