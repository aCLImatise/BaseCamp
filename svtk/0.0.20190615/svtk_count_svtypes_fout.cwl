class: CommandLineTool
id: ../../../svtk_count_svtypes_fout.cwl
inputs:
- id: no_header
  doc: ''
  type: boolean
  inputBinding:
    prefix: --no-header
- id: total_obs
  doc: ''
  type: boolean
  inputBinding:
    prefix: --total-obs
- id: total_variants
  doc: ''
  type: boolean
  inputBinding:
    prefix: --total-variants
- id: s_vtk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: count_sv_types
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- svtk
- count-svtypes
- fout
