class: CommandLineTool
id: add_xray.cwl
inputs:
- id: in_prm_top
  doc: ': amber topology, input and output files'
  type: string
  inputBinding:
    position: 0
- id: in_sym_lib
  doc: ': symmetry operator file, CCP4 format (symop.lib)'
  type: string
  inputBinding:
    position: 1
- id: in_atoms_f
  doc: ': scatter factor file, CCP4 format (atomsf.lib)'
  type: string
  inputBinding:
    position: 2
- id: in_sg_name
  doc: ': spacegroup name (P1)'
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- add_xray
