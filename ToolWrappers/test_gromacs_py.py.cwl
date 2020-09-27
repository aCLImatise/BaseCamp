class: CommandLineTool
id: test_gromacs_py.py.cwl
inputs:
- id: in_var_0
  doc: ': 1y0m'
  type: string
  inputBinding:
    position: 0
- id: in__genionymwaterion
  doc: ': genion_1y0m_water_ion'
  type: string
  inputBinding:
    position: 1
- id: in_var_2
  doc: ': 1y0m'
  type: string
  inputBinding:
    position: 0
- id: in__genionshdneutral
  doc: ': genion_SH3_D_neutral'
  type: string
  inputBinding:
    position: 1
- id: in_var_4
  doc: ': 1y0m'
  type: string
  inputBinding:
    position: 0
- id: in__initemym
  doc: ': Init_em_1y0m'
  type: string
  inputBinding:
    position: 1
- id: in_co_or_file
  doc: ': usr/local/lib/python3.8/site-packages/gromacs_py/test_files/1y0m.pdb'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- test_gromacs_py.py
