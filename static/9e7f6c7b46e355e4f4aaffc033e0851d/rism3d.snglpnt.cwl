class: CommandLineTool
id: rism3d.snglpnt.cwl
inputs:
- id: in_x_vv
  doc: '[--guv Guv_rootname]'
  type: File
  inputBinding:
    prefix: --xvv
- id: in_rst
  doc: ''
  type: File
  inputBinding:
    prefix: --rst
- id: in_prm_top
  doc: ''
  type: File
  inputBinding:
    prefix: --prmtop
- id: in_pdb
  doc: ''
  type: File
  inputBinding:
    prefix: --pdb
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rism3d.snglpnt
