class: CommandLineTool
id: drive_open.cwl
inputs:
- id: id
  doc: open by id instead of path
  type: boolean
  inputBinding:
    prefix: -id
- id: web_browser
  doc: open file in default browser (default true)
  type: boolean
  inputBinding:
    prefix: -web-browser
outputs: []
cwlVersion: v1.1
baseCommand:
- drive
- open
