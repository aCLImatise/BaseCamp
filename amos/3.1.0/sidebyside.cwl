class: CommandLineTool
id: sidebyside.cwl
inputs:
- id: width
  doc: ': line width for each file (default: 50)'
  type: string
  inputBinding:
    prefix: -width
- id: same
  doc: ': marker for lines that are the same (default: ==)'
  type: string
  inputBinding:
    prefix: -same
- id: dif
  doc: ': marker for lines that are different (default: !!)'
  type: string
  inputBinding:
    prefix: -dif
outputs: []
cwlVersion: v1.1
baseCommand:
- sidebyside
