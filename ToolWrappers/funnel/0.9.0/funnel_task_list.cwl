class: CommandLineTool
id: funnel_task_list.cwl
inputs:
- id: in_all
  doc: List all tasks
  type: boolean
  inputBinding:
    prefix: --all
- id: in_page_size
  doc: Page size
  type: long
  inputBinding:
    prefix: --page-size
- id: in_page_token
  doc: Page token
  type: string
  inputBinding:
    prefix: --page-token
- id: in_state
  doc: State filter
  type: string
  inputBinding:
    prefix: --state
- id: in_tag
  doc: Tag filter. May be used multiple times to specify more than one tag
  type: string
  inputBinding:
    prefix: --tag
- id: in_view
  doc: Task view (default "basic")
  type: string
  inputBinding:
    prefix: --view
- id: in_server
  doc: (default "http://localhost:8000")
  type: long
  inputBinding:
    prefix: --server
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- funnel
- task
- list
