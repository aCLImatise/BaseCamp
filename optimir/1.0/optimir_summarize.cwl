class: CommandLineTool
id: optimir_summarize.cwl
inputs:
- id: dir
  doc: ''
  type: string
  inputBinding:
    prefix: --dir
outputs: []
cwlVersion: v1.1
baseCommand:
- optimir
- summarize
