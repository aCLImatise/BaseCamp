class: CommandLineTool
id: drive_file_id.cwl
inputs:
- id: hidden
  doc: allows operation on hidden paths (default true)
  type: boolean
  inputBinding:
    prefix: -hidden
outputs: []
cwlVersion: v1.1
baseCommand:
- drive
- file-id
