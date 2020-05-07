class: CommandLineTool
id: ssu_esl_cluster.cwl
inputs:
- id: q
  doc: ': field to read as query name, 1..n  [8]  (n>0)'
  type: string
  inputBinding:
    prefix: -q
- id: t
  doc: ': field to read as target name, 1..n  [5]  (n>0)'
  type: string
  inputBinding:
    prefix: -t
- id: v
  doc: ': field to read as distance value, 1..n  [1]  (n>0)'
  type: string
  inputBinding:
    prefix: -v
- id: x
  doc: ': clustering threshold  [1e-4]  (x>0)'
  type: string
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-cluster
