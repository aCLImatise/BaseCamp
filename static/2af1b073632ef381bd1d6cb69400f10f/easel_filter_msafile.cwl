class: CommandLineTool
id: ../../../easel_filter_msafile.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: easel
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: filter
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: max_id
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: msa_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- easel
- filter
- msafile
