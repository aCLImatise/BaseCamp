class: CommandLineTool
id: falcon_task.cwl
inputs:
- id: in_task
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
- falcon-task
