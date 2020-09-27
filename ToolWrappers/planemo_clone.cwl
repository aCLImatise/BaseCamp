class: CommandLineTool
id: planemo_clone.cwl
inputs:
- id: in_branch
  doc: Create a named branch on result.
  type: string
  inputBinding:
    prefix: --branch
- id: in_target
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_project
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- planemo
- clone
