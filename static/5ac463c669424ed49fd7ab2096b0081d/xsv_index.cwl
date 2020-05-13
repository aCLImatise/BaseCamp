class: CommandLineTool
id: xsv_index.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Write index to <file> instead of <input>.idx. Generally, this is not currently
    useful because the only way to use an index is if it is specially named <input>.idx.
  type: File
  inputBinding:
    prefix: --output
- id: delimiter
  doc: 'The field delimiter for reading CSV data. Must be a single character. (default:
    ,)'
  type: string
  inputBinding:
    prefix: --delimiter
outputs: []
cwlVersion: v1.1
baseCommand:
- xsv
- index
