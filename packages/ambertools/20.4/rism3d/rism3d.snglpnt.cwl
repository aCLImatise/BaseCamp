class: CommandLineTool
id: rism3d.snglpnt.cwl
inputs:
- id: in_x_vv
  doc: '[--guv Guv_rootname]'
  type: File?
  inputBinding:
    prefix: --xvv
- id: in_pdb
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --pdb
- id: in_prm_top
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --prmtop
- id: in_rst
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --rst
- id: in_t_raj
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --traj
- id: in_guv
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --guv
- id: in_huv
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --huv
- id: in_cuv
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --cuv
- id: in_uuv
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --uuv
- id: in_asymp
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --asymp
- id: in_q_uv
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --quv
- id: in_chg_dist
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --chgdist
- id: in_ex_chem
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --exchem
- id: in_solve_ne
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --solvene
- id: in_entropy
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --entropy
- id: in_ex_chem_gf
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --exchemGF
- id: in_solve_neg_f
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --solveneGF
- id: in_entropy_gf
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --entropyGF
- id: in_exc_he_misc
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --exchemISC
- id: in_solve_ne_is_c
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --solveneISC
- id: in_entropy_is_c
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --entropyISC
- id: in_ex_chem_uc
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --exchemUC
- id: in_solve_neu_c
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --solveneUC
- id: in_entropy_uc
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --entropyUC
- id: in_pot_uv
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --potUV
- id: in_vol_fmt
  doc: dx
  type: boolean?
  inputBinding:
    prefix: --volfmt
- id: in_periodic
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --periodic
- id: in_closure
  doc: (null)
  type: boolean?
  inputBinding:
    prefix: --closure
- id: in_ng
  doc: 0,0,0
  type: boolean?
  inputBinding:
    prefix: --ng
- id: in_uc_coeff
  doc: 0.000000,0.000000,0.000000,0.000000
  type: boolean?
  inputBinding:
    prefix: --uccoeff
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rism3d.snglpnt
