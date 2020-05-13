class: CommandLineTool
id: sync.cwl
inputs:
- id: data
  doc: sync only file data, no unneeded metadata
  type: boolean
  inputBinding:
    prefix: --data
- id: file_system
  doc: sync the file systems that contain the files
  type: boolean
  inputBinding:
    prefix: --file-system
outputs: []
cwlVersion: v1.1
baseCommand:
- sync
