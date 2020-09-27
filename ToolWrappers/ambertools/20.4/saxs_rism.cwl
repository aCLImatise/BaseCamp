class: CommandLineTool
id: saxs_rism.cwl
inputs:
- id: in__solute_pdb
  doc: --solute       pdb file of the solute
  type: boolean
  inputBinding:
    prefix: -s
- id: in__concion_bulk
  doc: --conc_ion     bulk concentration of salt [M]
  type: boolean
  inputBinding:
    prefix: -m
- id: in__concwat_water
  doc: --conc_wat     water concentration [default 55.34M]
  type: boolean
  inputBinding:
    prefix: -w
- id: in__qcut_cutoff
  doc: --qcut         momentum transfer q cutoff [default 0.5 A^-1]
  type: boolean
  inputBinding:
    prefix: -q
- id: in__dq_q
  doc: --dq           q spacing [default 0.01 A^-1]
  type: boolean
  inputBinding:
    prefix: -i
- id: in__cutoff_distance
  doc: --cutoff       distance cutoff [default 20 A]
  type: boolean
  inputBinding:
    prefix: -c
- id: in__anomf_atomic
  doc: "--anom_f       f' of atomic scattering factor, used for ASAXS calculation,\n\
    currently only applied to Rb+, Sr2+ and Br- [default 0: off-edge]"
  type: boolean
  inputBinding:
    prefix: -a
- id: in__exper_file
  doc: "--exper        the experimental data file to read q from, once specified this\
    \ overrides dq and qcut\nexpect the first column is q (A^-1)"
  type: boolean
  inputBinding:
    prefix: -x
- id: in__expli_flag
  doc: --expli        flag for accounting for explicit H atoms in pdb file
  type: boolean
  inputBinding:
    prefix: -e
- id: in__exclv_flag
  doc: --exclV        flag for merging those contribution of the grid points inside
    the excluded volume of the solute into the solute
  type: boolean
  inputBinding:
    prefix: -v
- id: in__decomp_flag
  doc: --decomp       flag for decomposing SAXS intensity into site contributions
    (lead to 2-5x computational time)
  type: boolean
  inputBinding:
    prefix: -d
- id: in__phase_phase
  doc: --phase        output phase and error analysis instead of partial intensities
  type: boolean
  inputBinding:
    prefix: -p
- id: in__tight_flag
  doc: --tight        flag for using tighter convergence criteria for Lebedev quadrature
    (expect more time)
  type: boolean
  inputBinding:
    prefix: -t
- id: in__offcutoff_flag
  doc: --off_cutoff   flag for turning off cutoff, using all grid points for the calculation
  type: boolean
  inputBinding:
    prefix: -f
- id: in__bfactor_using
  doc: --bfactor      using B-factor in the PDB file to account for solute flexibility
  type: boolean
  inputBinding:
    prefix: -b
- id: in__output_output
  doc: --output       output file
  type: File
  inputBinding:
    prefix: -o
- id: in_grid_dir
  doc: ''
  type: boolean
  inputBinding:
    prefix: --grid_dir
- id: in_g
  doc: ''
  type: boolean
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
- id: out__output_output
  doc: --output       output file
  type: File
  outputBinding:
    glob: $(inputs.in__output_output)
cwlVersion: v1.1
baseCommand:
- saxs_rism
