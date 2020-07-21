class: CommandLineTool
id: ../../../gemBS.cwl
inputs:
- id: loglevel
  doc: Log level (error, warn, info, debug)
  type: string
  inputBinding:
    prefix: --loglevel
- id: json_file
  doc: Location of gemBS JSON file
  type: string
  inputBinding:
    prefix: --json-file
- id: dir
  doc: Set working directory
  type: string
  inputBinding:
    prefix: --dir
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- gemBS
