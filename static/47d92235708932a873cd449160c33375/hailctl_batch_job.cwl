class: CommandLineTool
id: hailctl_batch_job.cwl
inputs:
- id: in_specify_output_format
  doc: Specify output format
  type: string?
  inputBinding:
    prefix: -o
- id: in_batch_id
  doc: ID number of the desired batch
  type: string
  inputBinding:
    position: 0
- id: in_job_id
  doc: ID number of the desired job
  type: string
  inputBinding:
    position: 1
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
- batch
- job
