class: CommandLineTool
id: ffgbsa.cwl
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
- id: in_gb_flag
  doc: = integer (1, 2, 5, 7 or 8 for GB ON, else OFF)
  type: string
  inputBinding:
    position: 2
- id: in_sa_flag
  doc: = integer (0 for SA OFF, 1 for SA ON)
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ffgbsa
