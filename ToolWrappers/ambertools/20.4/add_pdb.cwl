class: CommandLineTool
id: add_pdb.cwl
inputs:
- id: in_guess
  doc: ": Guess atomic elements when absent from the PDB file.\n(default assumes proper\
    \ element-aligned names)"
  type: boolean
  inputBinding:
    prefix: -guess
- id: in_prm_top
  doc: ': amber topology'
  type: string
  inputBinding:
    position: 0
- id: in_pdb
  doc: ': matching PDB file'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- add_pdb
