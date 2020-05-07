class: CommandLineTool
id: kssd_reverse.cwl
inputs:
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: co_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- kssd
- reverse
