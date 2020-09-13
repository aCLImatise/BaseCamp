class: CommandLineTool
id: ../../../rism3d.snglpnt.cwl
inputs:
- id: in_x_vv
  doc: '[--guv Guv_rootname]'
  type: File
  inputBinding:
    prefix: --xvv
- id: in_pdb
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --pdb
- id: in_prm_top
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --prmtop
- id: in_rst
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --rst
- id: in_t_raj
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --traj
- id: in_guv
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --guv
- id: in_huv
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --huv
- id: in_cuv
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --cuv
- id: in_uuv
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --uuv
- id: in_asymp
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --asymp
- id: in_q_uv
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --quv
- id: in_chg_dist
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --chgdist
- id: in_ex_chem
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --exchem
- id: in_solve_ne
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --solvene
- id: in_entropy
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --entropy
- id: in_ex_chem_gf
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --exchemGF
- id: in_solve_neg_f
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --solveneGF
- id: in_entropy_gf
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --entropyGF
- id: in_exc_he_misc
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --exchemISC
- id: in_solve_ne_is_c
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --solveneISC
- id: in_entropy_is_c
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --entropyISC
- id: in_ex_chem_uc
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --exchemUC
- id: in_solve_neu_c
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --solveneUC
- id: in_entropy_uc
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --entropyUC
- id: in_pot_uv
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --potUV
- id: in_mol_reconstruct
  doc: '0'
  type: boolean
  inputBinding:
    prefix: --molReconstruct
- id: in_vol_fmt
  doc: dx
  type: boolean
  inputBinding:
    prefix: --volfmt
- id: in_periodic
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --periodic
- id: in_closure
  doc: (null)
  type: boolean
  inputBinding:
    prefix: --closure
- id: in_closure_order
  doc: '1'
  type: boolean
  inputBinding:
    prefix: --closureorder
- id: in_asymp_corr
  doc: '1'
  type: boolean
  inputBinding:
    prefix: --asympcorr
- id: in_buffer
  doc: '14.000000'
  type: boolean
  inputBinding:
    prefix: --buffer
- id: in_solv_cut
  doc: '-1.000000'
  type: boolean
  inputBinding:
    prefix: --solvcut
- id: in_grds_pc
  doc: 0.500000,0.500000,0.500000
  type: boolean
  inputBinding:
    prefix: --grdspc
- id: in_ng
  doc: 0,0,0
  type: boolean
  inputBinding:
    prefix: --ng
- id: in_solv_box
  doc: 0.000000,0.000000,0.000000
  type: boolean
  inputBinding:
    prefix: --solvbox
- id: in_tolerance
  doc: '0.000010'
  type: boolean
  inputBinding:
    prefix: --tolerance
- id: in_mdi_is_del
  doc: '0.700000'
  type: boolean
  inputBinding:
    prefix: --mdiis_del
- id: in_mdi_is_restart
  doc: '10.000000'
  type: boolean
  inputBinding:
    prefix: --mdiis_restart
- id: in_mdi_is_n_vec
  doc: '5'
  type: boolean
  inputBinding:
    prefix: --mdiis_nvec
- id: in_max_step
  doc: '10000'
  type: boolean
  inputBinding:
    prefix: --maxstep
- id: in_n_propagate
  doc: '5'
  type: boolean
  inputBinding:
    prefix: --npropagate
- id: in_centering
  doc: '1'
  type: boolean
  inputBinding:
    prefix: --centering
- id: in_polar_decomp
  doc: '0'
  type: boolean
  inputBinding:
    prefix: --polarDecomp
- id: in_entropic_decomp
  doc: '0'
  type: boolean
  inputBinding:
    prefix: --entropicDecomp
- id: in_gf
  doc: '0'
  type: boolean
  inputBinding:
    prefix: --gf
- id: in_pc
  doc: +                   0
  type: boolean
  inputBinding:
    prefix: --pc
- id: in_uc_coeff
  doc: 0.000000,0.000000,0.000000,0.000000
  type: boolean
  inputBinding:
    prefix: --uccoeff
- id: in_verbose
  doc: '0'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_tree_dcf
  doc: '1'
  type: boolean
  inputBinding:
    prefix: --treeDCF
- id: in_tree_tcf
  doc: '1'
  type: boolean
  inputBinding:
    prefix: --treeTCF
- id: in_tree_coulomb
  doc: '0'
  type: boolean
  inputBinding:
    prefix: --treeCoulomb
- id: in_tree_dcf_order
  doc: '2'
  type: boolean
  inputBinding:
    prefix: --treeDCFOrder
- id: in_tree_tcf_order
  doc: '2'
  type: boolean
  inputBinding:
    prefix: --treeTCFOrder
- id: in_tree_coulomb_order
  doc: '2'
  type: boolean
  inputBinding:
    prefix: --treeCoulombOrder
- id: in_tree_dc_fn_zero
  doc: '500'
  type: boolean
  inputBinding:
    prefix: --treeDCFN0
- id: in_treet_cfn_zero
  doc: '500'
  type: boolean
  inputBinding:
    prefix: --treeTCFN0
- id: in_tree_coulomb_n_zero
  doc: '500'
  type: boolean
  inputBinding:
    prefix: --treeCoulombN0
- id: in_tree_dcf_mac
  doc: '0.100000'
  type: boolean
  inputBinding:
    prefix: --treeDCFMAC
- id: in_tree_tcf_mac
  doc: '0.100000'
  type: boolean
  inputBinding:
    prefix: --treeTCFMAC
- id: in_tree_coulomb_mac
  doc: '0.100000'
  type: boolean
  inputBinding:
    prefix: --treeCoulombMAC
- id: in_asymp_k_space_tolerance
  doc: ''
  type: boolean
  inputBinding:
    prefix: --asympKSpaceTolerance
- id: in_lj_tolerance
  doc: '-1.000000'
  type: boolean
  inputBinding:
    prefix: --ljTolerance
- id: in_charge_smear
  doc: '1.000000'
  type: boolean
  inputBinding:
    prefix: --chargeSmear
- id: in_selftest
  doc: '0'
  type: boolean
  inputBinding:
    prefix: --selftest
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rism3d.snglpnt
