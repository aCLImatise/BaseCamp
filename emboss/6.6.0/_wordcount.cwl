class: CommandLineTool
id: _wordcount.cwl
inputs:
- id: word_size
  doc: 'integer    [@($(acdprotein)? 2 : 4)] Word size (Integer 1 or more)'
  type: boolean
  inputBinding:
    prefix: -wordsize
outputs: []
cwlVersion: v1.1
baseCommand:
- _wordcount
