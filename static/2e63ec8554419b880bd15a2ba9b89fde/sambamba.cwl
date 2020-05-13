class: CommandLineTool
id: sambamba.cwl
inputs:
- id: q
  doc: quiet mode (do not show banner)
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- sambamba
