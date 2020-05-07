class: CommandLineTool
id: ecitmatch.cwl
inputs:
- id: journal
  doc: Journal Title
  type: boolean
  inputBinding:
    prefix: -journal
- id: year
  doc: Year
  type: boolean
  inputBinding:
    prefix: -year
- id: volume
  doc: Volume
  type: boolean
  inputBinding:
    prefix: -volume
- id: page
  doc: First Page
  type: boolean
  inputBinding:
    prefix: -page
- id: author
  doc: Author Name
  type: boolean
  inputBinding:
    prefix: -author
outputs: []
cwlVersion: v1.1
baseCommand:
- ecitmatch
