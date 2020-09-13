class: CommandLineTool
id: ../../../drive_url.cwl
inputs:
- id: in_id
  doc: "resolve url by id instead of path\n"
  type: boolean
  inputBinding:
    prefix: -id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- drive
- url
