class: CommandLineTool
id: decide.bak.cwl
inputs:
- id: decide
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: histograms_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: diploid
  doc: use the diploid model
  type: boolean
  inputBinding:
    prefix: --diploid
- id: first_pass
  doc: do not display 'best k' at the end, inform user of rough estimation
  type: boolean
  inputBinding:
    prefix: --first_pass
- id: t
  doc: 'number of threads (default: 1)'
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- decide.bak
