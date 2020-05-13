class: CommandLineTool
id: xsv_fixlengths.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: length
  doc: Forcefully set the length of each record. If a record is not the size given,
    then it is truncated or expanded as appropriate.
  type: string
  inputBinding:
    prefix: --length
- id: output
  doc: Write output to <file> instead of stdout.
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
- fixlengths
