class: CommandLineTool
id: ../../../vkmz_w4m_xcms.cwl
inputs:
- id: path_xcms_matrix_file
  doc: '[DATA_MATRIX], -xd [DATA_MATRIX] Path to XCMS data matrix file'
  type: boolean
  inputBinding:
    prefix: --data-matrix
- id: sample_metadata
  doc: '[SAMPLE_METADATA], -xs [SAMPLE_METADATA] Path to XCMS sample metadata file'
  type: boolean
  inputBinding:
    prefix: --sample-metadata
- id: variable_metadata
  doc: '[VARIABLE_METADATA], -xv [VARIABLE_METADATA] Path to XCMS variable metadata
    file'
  type: boolean
  inputBinding:
    prefix: --variable-metadata
- id: error
  doc: '[ERROR], -e [ERROR] Mass error of MS data in parts-per-million'
  type: boolean
  inputBinding:
    prefix: --error
- id: output
  doc: '[OUTPUT], -o [OUTPUT] Specify output file path'
  type: boolean
  inputBinding:
    prefix: --output
- id: json
  doc: Set JSON flag to save JSON output
  type: boolean
  inputBinding:
    prefix: --json
- id: sql
  doc: Set SQL flag to save SQL output
  type: boolean
  inputBinding:
    prefix: --sql
- id: metadata
  doc: Set metadata flag to save argument metadata
  type: boolean
  inputBinding:
    prefix: --metadata
- id: database
  doc: '[DATABASE], -db [DATABASE] Define path to custom database of known formula-mass
    pairs'
  type: boolean
  inputBinding:
    prefix: --database
- id: prefix
  doc: '[PREFIX]     Define path prefix to support files ("d3.html" and database directory)'
  type: boolean
  inputBinding:
    prefix: --prefix
- id: polarity
  doc: Set flag to force polarity of all features to positive or negative
  type: string
  inputBinding:
    prefix: --polarity
- id: neutral
  doc: Set flag if input data contains neutral feature mass instead of mz
  type: boolean
  inputBinding:
    prefix: --neutral
- id: alternate
  doc: Set flag to keep features with multiple predictions
  type: boolean
  inputBinding:
    prefix: --alternate
- id: impute_charge
  doc: Set flag to impute "1" for missing charge information
  type: boolean
  inputBinding:
    prefix: --impute-charge
- id: var_14
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vkmz
- w4m-xcms
