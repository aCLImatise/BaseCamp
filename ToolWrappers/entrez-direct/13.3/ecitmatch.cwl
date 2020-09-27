class: CommandLineTool
id: ecitmatch.cwl
inputs:
- id: in_journal
  doc: Journal Title
  type: boolean
  inputBinding:
    prefix: -journal
- id: in_year
  doc: Year
  type: boolean
  inputBinding:
    prefix: -year
- id: in_volume
  doc: Volume
  type: boolean
  inputBinding:
    prefix: -volume
- id: in_page
  doc: First Page
  type: boolean
  inputBinding:
    prefix: -page
- id: in_author
  doc: Author Name
  type: boolean
  inputBinding:
    prefix: -author
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ecitmatch
