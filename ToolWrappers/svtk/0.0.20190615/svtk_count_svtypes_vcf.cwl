class: CommandLineTool
id: svtk_count_svtypes_vcf.cwl
inputs:
- id: in_total_variants
  doc: ''
  type: boolean
  inputBinding:
    prefix: --total-variants
- id: in_total_obs
  doc: ''
  type: boolean
  inputBinding:
    prefix: --total-obs
- id: in_no_header
  doc: ''
  type: boolean
  inputBinding:
    prefix: --no-header
- id: in_s_vtk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_count_sv_types
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
- svtk
- count-svtypes
- vcf
