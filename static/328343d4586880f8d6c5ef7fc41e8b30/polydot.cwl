class: CommandLineTool
id: polydot.cwl
inputs:
- id: word_size
  doc: integer    [6] Word size (Integer 2 or more)
  type: boolean
  inputBinding:
    prefix: -wordsize
outputs: []
cwlVersion: v1.1
baseCommand:
- polydot
