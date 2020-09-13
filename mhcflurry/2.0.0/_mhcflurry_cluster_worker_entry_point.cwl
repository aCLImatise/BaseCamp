class: CommandLineTool
id: ../../../_mhcflurry_cluster_worker_entry_point.cwl
inputs:
- id: in_constant_data
  doc: ''
  type: string
  inputBinding:
    prefix: --constant-data
- id: in_worker_data
  doc: ''
  type: string
  inputBinding:
    prefix: --worker-data
- id: in_result_out
  doc: ''
  type: string
  inputBinding:
    prefix: --result-out
- id: in_error_out
  doc: ''
  type: string
  inputBinding:
    prefix: --error-out
- id: in_complete_dir
  doc: ''
  type: string
  inputBinding:
    prefix: --complete-dir
- id: in_input_serialization_method
  doc: ''
  type: string
  inputBinding:
    prefix: --input-serialization-method
- id: in_result_serialization_method
  doc: ''
  type: string
  inputBinding:
    prefix: --result-serialization-method
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
cwlVersion: v1.1
baseCommand:
- _mhcflurry-cluster-worker-entry-point
