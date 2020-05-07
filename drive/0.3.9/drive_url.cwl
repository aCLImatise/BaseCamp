class: CommandLineTool
id: drive_url.cwl
inputs:
- id: id
  doc: resolve url by id instead of path
  type: boolean
  inputBinding:
    prefix: -id
outputs: []
cwlVersion: v1.1
baseCommand:
- drive
- url
