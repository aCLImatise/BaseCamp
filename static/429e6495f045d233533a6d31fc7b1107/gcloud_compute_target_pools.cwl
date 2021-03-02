class: CommandLineTool
id: gcloud_compute_target_pools.cwl
inputs:
- id: in_add_health_checks
  doc: Add an HTTP health check to a target pool.
  type: string
  inputBinding:
    position: 0
- id: in_add_instances
  doc: Add instances to a target pool.
  type: string
  inputBinding:
    position: 1
- id: in_create
  doc: Define a load-balanced pool of virtual machine instances.
  type: string
  inputBinding:
    position: 2
- id: in_delete
  doc: Delete target pools.
  type: string
  inputBinding:
    position: 3
- id: in_describe
  doc: Describe a Google Compute Engine target pool.
  type: string
  inputBinding:
    position: 4
- id: in_get_health
  doc: Get the health of instances in a target pool.
  type: string
  inputBinding:
    position: 5
- id: in_list
  doc: List Google Compute Engine target pools.
  type: string
  inputBinding:
    position: 6
- id: in_remove_health_checks
  doc: Remove an HTTP health check from a target pool.
  type: string
  inputBinding:
    position: 7
- id: in_remove_instances
  doc: Remove instances from a target pool.
  type: string
  inputBinding:
    position: 8
- id: in_set_backup
  doc: Set a backup pool for a target pool.
  type: string
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- target-pools
