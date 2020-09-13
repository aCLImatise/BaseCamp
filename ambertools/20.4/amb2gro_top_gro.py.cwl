class: CommandLineTool
id: ../../../amb2gro_top_gro.py.cwl
inputs:
- id: in_g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: in_prmtop_file
  doc: Prmtop file
  type: File
  inputBinding:
    prefix: -p
- id: in_inpcrd_file
  doc: Inpcrd file
  type: File
  inputBinding:
    prefix: -c
- id: in_gromacs_top_file
  doc: GROMACS top file
  type: File
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- amb2gro_top_gro.py
