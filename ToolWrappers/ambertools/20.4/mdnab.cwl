class: CommandLineTool
id: mdnab.cwl
inputs:
- id: in_pdb
  doc: = PDB file name
  type: string
  inputBinding:
    position: 0
- id: in_prm
  doc: = parameter-topology file name
  type: string
  inputBinding:
    position: 1
- id: in_t_raj
  doc: "= file name for trajectory (netCDF format)\n(the extension .nc is automatically\
    \ added)"
  type: string
  inputBinding:
    position: 2
- id: in_gb_flag
  doc: = integer (0 for GB OFF, 1, 2, 5, 7, or 8 for GB ON)
  type: string
  inputBinding:
    position: 3
- id: in_pico_secs
  doc: "= integer (time of production phase)\n(mdsteps = picosecs * 1000/2, because\
    \ rattle is used)"
  type: string
  inputBinding:
    position: 4
- id: in_res_force
  doc: "= force constant for restraints (kcal/mol/A2)\n(must be given when restraints\
    \ are specified!)\n"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mdnab
