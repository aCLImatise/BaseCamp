class: CommandLineTool
id: ssu_esl_cluster.cwl
inputs:
- id: in_field_read_query
  doc: ': field to read as query name, 1..n  [8]  (n>0)'
  type: long?
  inputBinding:
    prefix: -q
- id: in_field_read_target
  doc: ': field to read as target name, 1..n  [5]  (n>0)'
  type: long?
  inputBinding:
    prefix: -t
- id: in_field_read_distance
  doc: ': field to read as distance value, 1..n  [1]  (n>0)'
  type: long?
  inputBinding:
    prefix: -v
- id: in__clustering_threshold
  doc: ': clustering threshold  [1e-4]  (x>0)'
  type: double?
  inputBinding:
    prefix: -x
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_keyfile
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tab_file
  doc: ''
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
- ssu-esl-cluster
