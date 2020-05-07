class: CommandLineTool
id: xsv_headers.cwl
inputs:
- id: just_names
  doc: Only show the header names (hide column index). This is automatically enabled
    if more than one input is given.
  type: boolean
  inputBinding:
    prefix: --just-names
- id: intersect
  doc: Shows the intersection of all headers in all of the inputs given.
  type: boolean
  inputBinding:
    prefix: --intersect
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
- headers
