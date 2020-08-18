class: CommandLineTool
id: ../../../sync.cwl
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
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- sync
