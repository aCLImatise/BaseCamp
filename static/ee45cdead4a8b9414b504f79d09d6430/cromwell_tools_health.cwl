class: CommandLineTool
id: cromwell_tools_health.cwl
inputs:
- id: submit
  doc: submit help
  type: string
  inputBinding:
    position: 0
- id: wait
  doc: wait help
  type: string
  inputBinding:
    position: 1
- id: status
  doc: status help
  type: string
  inputBinding:
    position: 2
- id: abort
  doc: abort help
  type: string
  inputBinding:
    position: 3
- id: release_hold
  doc: release_hold help
  type: string
  inputBinding:
    position: 4
- id: metadata
  doc: metadata help
  type: string
  inputBinding:
    position: 5
- id: query
  doc: query help
  type: string
  inputBinding:
    position: 6
- id: health
  doc: health help
  type: string
  inputBinding:
    position: 7
- id: task_runtime
  doc: task_runtime help
  type: string
  inputBinding:
    position: 8
outputs: []
cwlVersion: v1.1
baseCommand:
- cromwell-tools
- health
