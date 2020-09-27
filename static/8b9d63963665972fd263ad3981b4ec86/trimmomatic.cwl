class: CommandLineTool
id: trimmomatic.cwl
inputs:
- id: in_threads
  doc: ''
  type: string
  inputBinding:
    prefix: -threads
- id: in_version
  doc: ''
  type: boolean
  inputBinding:
    prefix: -version
- id: in_pe
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- trimmomatic
