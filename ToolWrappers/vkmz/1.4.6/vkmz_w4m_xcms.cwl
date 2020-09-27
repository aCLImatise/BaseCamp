class: CommandLineTool
id: vkmz_w4m_xcms.cwl
inputs:
- id: in_error
  doc: '[ERROR] --output [OUTPUT] [--json] [--sql]'
  type: boolean
  inputBinding:
    prefix: --error
- id: in_path_xcms_matrix_file
  doc: "[DATA_MATRIX], -xd [DATA_MATRIX]\nPath to XCMS data matrix file"
  type: boolean
  inputBinding:
    prefix: --data-matrix
- id: in_sample_metadata
  doc: "[SAMPLE_METADATA], -xs [SAMPLE_METADATA]\nPath to XCMS sample metadata file"
  type: boolean
  inputBinding:
    prefix: --sample-metadata
- id: in_variable_metadata
  doc: "[VARIABLE_METADATA], -xv [VARIABLE_METADATA]\nPath to XCMS variable metadata\
    \ file"
  type: boolean
  inputBinding:
    prefix: --variable-metadata
- id: in_output
  doc: "[OUTPUT], -o [OUTPUT]\nSpecify output file path"
  type: File
  inputBinding:
    prefix: --output
- id: in_json
  doc: Set JSON flag to save JSON output
  type: boolean
  inputBinding:
    prefix: --json
- id: in_sql
  doc: Set SQL flag to save SQL output
  type: boolean
  inputBinding:
    prefix: --sql
- id: in_metadata
  doc: Set metadata flag to save argument metadata
  type: boolean
  inputBinding:
    prefix: --metadata
- id: in_database
  doc: "[DATABASE], -db [DATABASE]\nDefine path to custom database of known formula-mass\n\
    pairs"
  type: boolean
  inputBinding:
    prefix: --database
- id: in_prefix
  doc: "[PREFIX]     Define path prefix to support files (\"d3.html\" and\ndatabase\
    \ directory)"
  type: boolean
  inputBinding:
    prefix: --prefix
- id: in_polarity
  doc: "Set flag to force polarity of all features to positive\nor negative"
  type: string
  inputBinding:
    prefix: --polarity
- id: in_neutral
  doc: "Set flag if input data contains neutral feature mass\ninstead of mz"
  type: boolean
  inputBinding:
    prefix: --neutral
- id: in_alternate
  doc: Set flag to keep features with multiple predictions
  type: boolean
  inputBinding:
    prefix: --alternate
- id: in_impute_charge
  doc: "Set flag to impute \"1\" for missing charge information\n"
  type: boolean
  inputBinding:
    prefix: --impute-charge
- id: in_var_14
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "[OUTPUT], -o [OUTPUT]\nSpecify output file path"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- vkmz
- w4m-xcms
