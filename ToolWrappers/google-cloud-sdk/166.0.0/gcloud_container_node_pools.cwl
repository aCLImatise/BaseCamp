class: CommandLineTool
id: gcloud_container_node_pools.cwl
inputs:
- id: in_zone
  doc: "The compute zone (e.g. us-central1-a) for the cluster. Overrides the\ndefault\
    \ compute/zone property value for this command invocation."
  type: long?
  inputBinding:
    prefix: --zone
- id: in_create
  doc: Create a node pool in a running cluster.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete an existing node pool in a running cluster.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Describe an existing node pool for a cluster.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: List existing node pools for a cluster.
  type: string
  inputBinding:
    position: 3
- id: in_rollback
  doc: Rollback a node-pool upgrade.
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- container
- node-pools
