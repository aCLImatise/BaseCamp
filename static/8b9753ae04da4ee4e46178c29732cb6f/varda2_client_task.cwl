class: CommandLineTool
id: ../../../varda2_client_task.cwl
inputs:
- id: uuid
  doc: Task UUID
  type: string
  inputBinding:
    prefix: --uuid
outputs: []
cwlVersion: v1.1
baseCommand:
- varda2-client
- task
