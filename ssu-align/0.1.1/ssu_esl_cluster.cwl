class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ssu_esl_cluster.cwl
inputs:
- id: field_read_query
  doc: ': field to read as query name, 1..n  [8]  (n>0)'
  type: string
  inputBinding:
    prefix: -q
- id: field_read_target
  doc: ': field to read as target name, 1..n  [5]  (n>0)'
  type: string
  inputBinding:
    prefix: -t
- id: field_read_distance
  doc: ': field to read as distance value, 1..n  [1]  (n>0)'
  type: string
  inputBinding:
    prefix: -v
- id: _clustering_threshold
  doc: ': clustering threshold  [1e-4]  (x>0)'
  type: string
  inputBinding:
    prefix: -x
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: keyfile
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tab_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-cluster
