class: CommandLineTool
id: drive_new.cwl
inputs:
- id: in_folder
  doc: create a folder if set otherwise create a regular file
  type: boolean?
  inputBinding:
    prefix: -folder
- id: in_mime_key
  doc: "coerce the file to this mimeType\n"
  type: File?
  inputBinding:
    prefix: -mime-key
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- drive
- new
