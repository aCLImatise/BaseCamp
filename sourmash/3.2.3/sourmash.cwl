class: CommandLineTool
id: sourmash.cwl
inputs:
- id: quiet
  doc: don't print citation information
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- sourmash
