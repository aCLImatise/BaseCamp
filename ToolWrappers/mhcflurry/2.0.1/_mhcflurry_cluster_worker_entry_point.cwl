class: CommandLineTool
id: _mhcflurry_cluster_worker_entry_point.cwl
inputs:
- id: in_entry
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_point
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_cluster
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_workers
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mhcflurry:2.0.1--pyh864c0ab_0
cwlVersion: v1.1
baseCommand:
- _mhcflurry-cluster-worker-entry-point
