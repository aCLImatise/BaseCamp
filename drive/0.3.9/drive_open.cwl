class: CommandLineTool
id: ../../../drive_open.cwl
inputs:
- id: in_file_browser
  doc: open file with the local file manager (default true)
  type: boolean
  inputBinding:
    prefix: -file-browser
- id: in_id
  doc: open by id instead of path
  type: boolean
  inputBinding:
    prefix: -id
- id: in_web_browser
  doc: "open file in default browser (default true)\n"
  type: boolean
  inputBinding:
    prefix: -web-browser
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- drive
- open
