class: CommandLineTool
id: _mhcflurry_cluster_worker_entry_point.cwl
inputs:
- id: entry
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: point
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: cluster
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: workers
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- _mhcflurry-cluster-worker-entry-point
