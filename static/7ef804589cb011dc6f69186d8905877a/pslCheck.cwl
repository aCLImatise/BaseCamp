class: CommandLineTool
id: pslCheck.cwl
inputs:
- id: quiet
  doc: error message, just filter
  type: string
  inputBinding:
    prefix: -quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- pslCheck
