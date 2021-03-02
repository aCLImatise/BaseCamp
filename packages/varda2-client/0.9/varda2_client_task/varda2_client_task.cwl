class: CommandLineTool
id: varda2_client_task.cwl
inputs:
- id: in_uuid
  doc: Task UUID
  type: string?
  inputBinding:
    prefix: --uuid
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/varda2-client:0.9--py_0
cwlVersion: v1.1
baseCommand:
- varda2-client
- task
