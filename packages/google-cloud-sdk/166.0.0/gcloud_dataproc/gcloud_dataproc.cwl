class: CommandLineTool
id: gcloud_dataproc.cwl
inputs:
- id: in_region
  doc: "Specifies the Cloud Dataproc region to use. Each Cloud Dataproc region\nconstitutes\
    \ an independent resource namespace constrained to deploying\ninstances into Google\
    \ Compute Engine zones inside the region. The\ndefault value of \"global\" is\
    \ a special multi-region namespace which is\ncapable of deploying instances into\
    \ all Google Compute Engine zones\nglobally, and is disjoint from other Cloud\
    \ Dataproc regions. Overrides\nthe default dataproc/region property value for\
    \ this command invocation."
  type: string
  inputBinding:
    prefix: --region
- id: in_clusters
  doc: Create and manage Google Cloud Dataproc clusters.
  type: string
  inputBinding:
    position: 0
- id: in_jobs
  doc: Submit and manage Google Cloud Dataproc jobs.
  type: string
  inputBinding:
    position: 1
- id: in_operations
  doc: View and manage Google Cloud Dataproc operations.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- dataproc
