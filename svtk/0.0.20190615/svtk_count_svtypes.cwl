class: CommandLineTool
id: ../../../svtk_count_svtypes.cwl
inputs:
- id: in_no_header
  doc: Don't include header in output
  type: boolean
  inputBinding:
    prefix: --no-header
- id: in_total_obs
  doc: Sum variant counts across samples
  type: boolean
  inputBinding:
    prefix: --total-obs
- id: in_total_variants
  doc: Sum variant counts across samples
  type: boolean
  inputBinding:
    prefix: --total-variants
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- svtk
- count-svtypes
