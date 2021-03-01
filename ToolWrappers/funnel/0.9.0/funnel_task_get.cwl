class: CommandLineTool
id: funnel_task_get.cwl
inputs:
- id: in_view
  doc: Task view (default "full")
  type: string?
  inputBinding:
    prefix: --view
- id: in_task_id
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- funnel
- task
- get
