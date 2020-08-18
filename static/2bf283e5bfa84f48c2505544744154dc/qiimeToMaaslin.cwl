class: CommandLineTool
id: ../../../qiimeToMaaslin.py.cwl
inputs:
- id: normalize_data_values
  doc: Don't normalize data values by column sums
  type: boolean
  inputBinding:
    prefix: -n
- id: string_representing_missing
  doc: String representing missing metadata values
  type: string
  inputBinding:
    prefix: -s
- id: percolumn_quality_control
  doc: Per-column quality control, minimum fraction of maximum value
  type: long
  inputBinding:
    prefix: -m
- id: depth_computed_negativefrom
  doc: Depth of taxonomy to be computed, negative=from right, 0=no change
  type: string
  inputBinding:
    prefix: -t
- id: output_only_leaves
  doc: Output only leaves, not complete taxonomy
  type: boolean
  inputBinding:
    prefix: -l
- id: file_sample_ids
  doc: File from which sample IDs to exclude are read
  type: string
  inputBinding:
    prefix: -x
- id: metadata_dot_txt
  doc: File from which metadata is read
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- qiimeToMaaslin.py
