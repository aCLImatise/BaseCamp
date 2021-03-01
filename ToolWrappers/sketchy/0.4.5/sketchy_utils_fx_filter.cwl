class: CommandLineTool
id: sketchy_utils_fx_filter.cwl
inputs:
- id: in_fpath
  doc: Path to Fast{a,q} input file.  [required]
  type: File?
  inputBinding:
    prefix: --fpath
- id: in_output
  doc: Output to Fast{a,q} file. Default stdout [-]
  type: File?
  inputBinding:
    prefix: --output
- id: in_ids
  doc: "Path to file containing the read IDs to get from\nFast{a,q}.   [required]"
  type: File?
  inputBinding:
    prefix: --ids
- id: in_column
  doc: Column index that contains the IDs (0-based). [1]
  type: long?
  inputBinding:
    prefix: --column
- id: in_sep
  doc: File separator to read columns. ['\t']
  type: File?
  inputBinding:
    prefix: --sep
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output to Fast{a,q} file. Default stdout [-]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0
cwlVersion: v1.1
baseCommand:
- sketchy
- utils
- fx-filter
