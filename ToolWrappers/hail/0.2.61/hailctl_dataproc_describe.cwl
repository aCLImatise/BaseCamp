class: CommandLineTool
id: hailctl_dataproc_describe.cwl
inputs:
- id: in_requester_pays_project_id
  doc: "Project to be billed for GCS requests.\n"
  type: string?
  inputBinding:
    prefix: --requester-pays-project-id
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
- describe
