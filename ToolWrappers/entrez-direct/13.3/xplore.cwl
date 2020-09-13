class: CommandLineTool
id: ../../../xplore.cwl
inputs:
- id: in_link
  doc: ''
  type: boolean
  inputBinding:
    prefix: -link
- id: in_load
  doc: ''
  type: boolean
  inputBinding:
    prefix: -load
- id: in_save
  doc: ''
  type: boolean
  inputBinding:
    prefix: -save
- id: in_search
  doc: ''
  type: boolean
  inputBinding:
    prefix: -search
- id: in_version
  doc: ''
  type: boolean
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- xplore
