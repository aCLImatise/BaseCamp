class: CommandLineTool
id: minab.cwl
inputs:
- id: in_pdb
  doc: = PDB file with initial coordinates
  type: string
  inputBinding:
    position: 0
- id: in_prm
  doc: = parameter-topology file name
  type: string
  inputBinding:
    position: 1
- id: in_out_pdb
  doc: = file name for refined coordinates (PDB format)
  type: string
  inputBinding:
    position: 2
- id: in_gb_flag
  doc: = integer (1, 2, 5, 7, or 8 for GB ON, else GB OFF)
  type: string
  inputBinding:
    position: 3
- id: in_niter
  doc: = integer (number of iterations)
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
- minab
