class: CommandLineTool
id: funnel_completion.cwl
inputs:
- id: in_bash
  doc: Generate bash completion code
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
- funnel
- completion
