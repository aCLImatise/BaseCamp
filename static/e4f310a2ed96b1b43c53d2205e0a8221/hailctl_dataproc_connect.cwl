class: CommandLineTool
id: hailctl_dataproc_connect.cwl
inputs:
- id: in_project
  doc: "Google Cloud project for the cluster (defaults to\ncurrently set project)."
  type: string?
  inputBinding:
    prefix: --project
- id: in_port
  doc: "Local port to use for SSH tunnel to leader (master)\nnode (default: 10000)."
  type: long?
  inputBinding:
    prefix: --port
- id: in_zone
  doc: Compute zone for Dataproc cluster.
  type: string?
  inputBinding:
    prefix: --zone
- id: in_dry_run
  doc: Print gcloud dataproc command, but don't run it.
  type: boolean?
  inputBinding:
    prefix: --dry-run
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1
cwlVersion: v1.1
baseCommand:
- hailctl
- dataproc
- connect
