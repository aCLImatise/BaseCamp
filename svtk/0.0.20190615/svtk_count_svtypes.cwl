class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/svtk_count_svtypes.cwl
inputs:
- id: no_header
  doc: Don't include header in output
  type: boolean
  inputBinding:
    prefix: --no-header
- id: total_obs
  doc: Sum variant counts across samples
  type: boolean
  inputBinding:
    prefix: --total-obs
- id: total_variants
  doc: Sum variant counts across samples
  type: boolean
  inputBinding:
    prefix: --total-variants
outputs: []
cwlVersion: v1.1
baseCommand:
- svtk
- count-svtypes
