class: CommandLineTool
id: sketchy_utils_fx_filter.cwl
inputs:
- id: fpath
  doc: Path to Fast{a,q} input file.  [required]
  type: File
  inputBinding:
    prefix: --fpath
- id: output
  doc: Output to Fast{a,q} file. Default stdout [-]
  type: string
  inputBinding:
    prefix: --output
- id: ids
  doc: Path to file containing the read IDs to get from Fast{a,q}.   [required]
  type: File
  inputBinding:
    prefix: --ids
- id: column
  doc: Column index that contains the IDs (0-based). [1]
  type: long
  inputBinding:
    prefix: --column
- id: sep
  doc: File separator to read columns. ['\t']
  type: string
  inputBinding:
    prefix: --sep
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy
- utils
- fx-filter
