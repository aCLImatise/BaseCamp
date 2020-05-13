class: CommandLineTool
id: sketchy_utils_fx_sort.cwl
inputs:
- id: fast_x
  doc: Path to Fast{a,q} input file.  [required]
  type: File
  inputBinding:
    prefix: --fastx
- id: output
  doc: Output to Fast{a,q} file. Default stdout [-]
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy
- utils
- fx-sort
