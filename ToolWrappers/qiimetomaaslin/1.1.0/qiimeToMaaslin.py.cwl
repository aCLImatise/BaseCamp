class: CommandLineTool
id: qiimeToMaaslin.py.cwl
inputs:
- id: in_normalize_data_values
  doc: Don't normalize data values by column sums
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_string_representing_values
  doc: String representing missing metadata values
  type: string?
  inputBinding:
    prefix: -s
- id: in_percolumn_quality_control
  doc: Per-column quality control, minimum fraction of maximum
  type: long?
  inputBinding:
    prefix: -m
- id: in_file_ids_exclude
  doc: File from which sample IDs to exclude are read
  type: File?
  inputBinding:
    prefix: -x
- id: in_l
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
- id: in_metadata_dot_txt
  doc: File from which metadata is read
  type: string
  inputBinding:
    position: 0
- id: in_value
  doc: -t taxa         Depth of taxonomy to be computed, negative=from right, 0=no
  type: string
  inputBinding:
    position: 0
- id: in_change
  doc: -l              Output only leaves, not complete taxonomy
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- qiimeToMaaslin.py
