class: CommandLineTool
id: dottup.cwl
inputs:
- id: word_size
  doc: integer    [10] Word size (Integer 2 or more)
  type: boolean
  inputBinding:
    prefix: -wordsize
outputs: []
cwlVersion: v1.1
baseCommand:
- dottup
