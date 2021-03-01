class: CommandLineTool
id: test_gromacs_py.py.cwl
inputs:
- id: in__genionshdneutral
  doc: ': genion_SH3_D_neutral'
  type: string
  inputBinding:
    position: 1
- id: in_var_1
  doc: ': 1y0m'
  type: string
  inputBinding:
    position: 0
- id: in__initemym
  doc: ': Init_em_1y0m'
  type: string
  inputBinding:
    position: 1
- id: in_var_3
  doc: ': 1y0m'
  type: string
  inputBinding:
    position: 0
- id: in__equihadsh
  doc: ': equi_HA_D_SH3'
  type: string
  inputBinding:
    position: 1
- id: in___equihadshequihadshcompactpdb
  doc: ': .../equi_HA_D_SH3/equi_HA_D_SH3_compact.pdb'
  type: string
  inputBinding:
    position: 2
- id: in_tpr
  doc: ': .../equi_HA_D_SH3/equi_HA_D_SH3.tpr'
  type: string
  inputBinding:
    position: 3
- id: in_xtc
  doc: ': .../equi_HA_D_SH3/equi_HA_D_SH3.xtc'
  type: string
  inputBinding:
    position: 4
- id: in_edr
  doc: ': .../equi_HA_D_SH3/equi_HA_D_SH3.edr'
  type: string
  inputBinding:
    position: 5
- id: in_var_9
  doc: ': 1y0m'
  type: string
  inputBinding:
    position: 0
- id: in__usrlocallibpythonsitepackagesgromacspytestfilesympdb
  doc: ': usr/local/lib/python3.8/site-packages/gromacs_py/test_files/1y0m.pdb'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- test_gromacs_py.py
