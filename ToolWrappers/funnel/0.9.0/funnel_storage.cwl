class: CommandLineTool
id: funnel_storage.cwl
inputs:
- id: in_config
  doc: Config File
  type: File?
  inputBinding:
    prefix: --config
- id: in_get
  doc: Get the object at the given URL.
  type: string
  inputBinding:
    position: 0
- id: in_list
  doc: List objects at the given URL.
  type: string
  inputBinding:
    position: 1
- id: in_put
  doc: Put the local file to the given URL.
  type: string
  inputBinding:
    position: 2
- id: in_stat
  doc: Returns information about the object at the given URL.
  type: string
  inputBinding:
    position: 3
- id: in_stat_task
  doc: Returns information about inputs/outputs of the task.
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
- funnel
- storage
