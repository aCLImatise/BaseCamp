class: CommandLineTool
id: easel_filter_msafile.cwl
inputs:
- id: max_id
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: msa_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- easel
- filter
- msafile
