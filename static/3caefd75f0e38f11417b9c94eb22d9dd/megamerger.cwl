class: CommandLineTool
id: megamerger.cwl
inputs:
- id: word_size
  doc: integer    [20] Word size (Integer 2 or more)
  type: boolean
  inputBinding:
    prefix: -wordsize
outputs: []
cwlVersion: v1.1
baseCommand:
- megamerger
