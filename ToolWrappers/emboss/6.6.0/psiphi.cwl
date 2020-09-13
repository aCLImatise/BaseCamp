class: CommandLineTool
id: ../../../psiphi.cwl
inputs:
- id: in_chain_number
  doc: "integer    [1] Number of the chain for which torsion\nangles should be calculated\
    \ (Integer 1 or\nmore)"
  type: boolean
  inputBinding:
    prefix: -chainnumber
- id: in_start_residue_number
  doc: "[1] First residue in chain for which torsion\nangles should be calculated\
    \ (Integer 1 or\nmore)"
  type: long
  inputBinding:
    prefix: -startresiduenumber
- id: in_finish_residue_number
  doc: "[1] Last residue in chain for which torsion\nangles should be calculated (1\
    \ = last\nresidue) (Any integer value)"
  type: long
  inputBinding:
    prefix: -finishresiduenumber
- id: in_r_format
  doc: )
  type: string
  inputBinding:
    prefix: -rformat
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- psiphi
