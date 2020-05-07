class: CommandLineTool
id: _prettyseq.cwl
inputs:
- id: range
  doc: range      [Whole sequence] Range(s) to translate
  type: boolean
  inputBinding:
    prefix: -range
outputs: []
cwlVersion: v1.1
baseCommand:
- _prettyseq
