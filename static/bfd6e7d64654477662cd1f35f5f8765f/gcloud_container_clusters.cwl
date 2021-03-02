class: CommandLineTool
id: gcloud_container_clusters.cwl
inputs:
- id: in_zone
  doc: "The compute zone (e.g. us-central1-a) for the cluster. Overrides the\ndefault\
    \ compute/zone property value for this command invocation."
  type: long?
  inputBinding:
    prefix: --zone
- id: in_clusters
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_clusters_dot
  doc: FLAGS
  type: string
  inputBinding:
    position: 0
- id: in_create
  doc: Create a cluster for running containers.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete an existing cluster for running containers.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Describe an existing cluster for running containers.
  type: string
  inputBinding:
    position: 2
- id: in_get_credentials
  doc: Fetch credentials for a running cluster.
  type: string
  inputBinding:
    position: 3
- id: in_list
  doc: List existing clusters for running containers.
  type: string
  inputBinding:
    position: 4
- id: in_resize
  doc: Resizes an existing cluster for running containers.
  type: string
  inputBinding:
    position: 5
- id: in_update
  doc: Update cluster settings for an existing container cluster.
  type: string
  inputBinding:
    position: 6
- id: in_upgrade
  doc: Upgrade the Kubernetes version of an existing container cluster.
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- container
- clusters
