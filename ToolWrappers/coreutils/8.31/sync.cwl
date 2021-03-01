class: CommandLineTool
id: sync.cwl
inputs:
- id: in_data
  doc: sync only file data, no unneeded metadata
  type: boolean?
  inputBinding:
    prefix: --data
- id: in_file_system
  doc: sync the file systems that contain the files
  type: boolean?
  inputBinding:
    prefix: --file-system
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sync
