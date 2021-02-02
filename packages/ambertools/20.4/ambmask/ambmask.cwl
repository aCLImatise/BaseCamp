class: CommandLineTool
id: ambmask.cwl
inputs:
- id: in_prm_top
  doc: ': amber topology'
  type: string
  inputBinding:
    position: 0
- id: in_in_pc_rd
  doc: ': amber (restrt) coordinates'
  type: string
  inputBinding:
    position: 1
- id: in_prn_lev
  doc: ': amount of (debugging) info printed'
  type: string
  inputBinding:
    position: 2
- id: in_format
  doc: ': output format: short|pdb|amber'
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ambmask
