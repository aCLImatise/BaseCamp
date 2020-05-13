class: CommandLineTool
id: drive_new.cwl
inputs:
- id: mime_key
  doc: coerce the file to this mimeType
  type: string
  inputBinding:
    prefix: -mime-key
outputs: []
cwlVersion: v1.1
baseCommand:
- drive
- new
