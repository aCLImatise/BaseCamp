class: CommandLineTool
id: ../../../varda2_client_monitor.cwl
inputs:
- id: task_file
  doc: Filename of tasks to monitor
  type: string
  inputBinding:
    prefix: --task-file
outputs: []
cwlVersion: v1.1
baseCommand:
- varda2-client
- monitor
