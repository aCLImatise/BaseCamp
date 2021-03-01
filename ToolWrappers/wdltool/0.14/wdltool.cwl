class: CommandLineTool
id: wdltool.cwl
inputs:
- id: in_workflow_dot
  doc: Fill in the values in this JSON document and
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- wdltool
