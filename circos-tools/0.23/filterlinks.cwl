class: CommandLineTool
id: filterlinks.cwl
inputs:
- id: links
  doc: ''
  type: string
  inputBinding:
    prefix: -links
- id: no_inter
  doc: ''
  type: boolean
  inputBinding:
    prefix: -nointer
- id: no_intra
  doc: ''
  type: boolean
  inputBinding:
    prefix: -nointra
- id: debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: -debug
outputs: []
cwlVersion: v1.1
baseCommand:
- filterlinks
