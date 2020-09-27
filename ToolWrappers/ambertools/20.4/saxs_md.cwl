class: CommandLineTool
id: saxs_md.cwl
inputs:
- id: in__solvent_file
  doc: --solvent      pdb file of the solvent
  type: boolean
  inputBinding:
    prefix: -w
- id: in__qcut_cutoff
  doc: --qcut         momentum transfer q cutoff [default 1.0 A^-1]
  type: boolean
  inputBinding:
    prefix: -q
- id: in__dq_q
  doc: --dq           q spacing [default 0.01 A^-1]
  type: boolean
  inputBinding:
    prefix: -d
- id: in__cutoff_generate
  doc: "--cutoff       generate a box with buffer=cutoff [default 10A]. Only keeping\
    \ solvent molecules\nwithin this box for SAXS calculation"
  type: boolean
  inputBinding:
    prefix: -c
- id: in__tight_use
  doc: --tight        use tighter convergence criteria for Lebedev quadrature
  type: boolean
  inputBinding:
    prefix: -t
- id: in__anomf_anomalous
  doc: "--anom_f       f' for anomalous scattering, used for ASAXS calculation,\n\
    currently only support Rb+, Sr2+ and Br- [default 0: off-edge]"
  type: boolean
  inputBinding:
    prefix: -a
- id: in__expli_flag
  doc: --expli        flag for accounting for explicit H atoms in pdb file
  type: boolean
  inputBinding:
    prefix: -e
- id: in__corrected_d
  doc: "--corrected    correction d for bulk density difference between the blank\
    \ and sample simulation\nthe excess density will be g = (1-d)rho_sample - rho_blank"
  type: boolean
  inputBinding:
    prefix: -k
- id: in__bcutoff_distance
  doc: --bcutoff      minimum distance between the solvent and solute to apply the
    above correction
  type: boolean
  inputBinding:
    prefix: -b
- id: in__exper_experiment
  doc: "--exper        experiment data file to read q from, once specified this overrides\
    \ dq and qcut\nExpect the first column is q (A^-1)"
  type: boolean
  inputBinding:
    prefix: -x
- id: in__output_output
  doc: --output       output file
  type: File
  inputBinding:
    prefix: -o
- id: in_system
  doc: ''
  type: boolean
  inputBinding:
    prefix: --system
- id: in_i
  doc: ''
  type: boolean
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
- id: out__output_output
  doc: --output       output file
  type: File
  outputBinding:
    glob: $(inputs.in__output_output)
cwlVersion: v1.1
baseCommand:
- saxs_md
