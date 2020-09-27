class: CommandLineTool
id: elsize.cwl
inputs:
- id: in_det
  doc: (default) gives A_det,
  type: boolean
  inputBinding:
    prefix: -det
- id: in_ell
  doc: A_ell (elliptic integral),
  type: string
  inputBinding:
    prefix: -ell
- id: in_elf
  doc: "A_elf (elementary functions approximation to A_ell,\nnormally less than 0.1A\
    \ apart),"
  type: double
  inputBinding:
    prefix: -elf
- id: in_abc
  doc: "a, b, c (semiaxes of the effective ellipsoid,\njust out of curiousity)"
  type: string
  inputBinding:
    prefix: -abc
- id: in_tab
  doc: PQR file name and all of the above into a table without header
  type: File
  inputBinding:
    prefix: -tab
- id: in_hea
  doc: same table as -tab but with a header
  type: string
  inputBinding:
    prefix: -hea
- id: in_deb
  doc: same as -tab with some extra (debugging) information
  type: string
  inputBinding:
    prefix: -deb
- id: in_xyz
  doc: a file containing only XYZ coordinates as input.
  type: File
  inputBinding:
    prefix: -xyz
- id: in_your_structure_dot_pqr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_arg
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- elsize
