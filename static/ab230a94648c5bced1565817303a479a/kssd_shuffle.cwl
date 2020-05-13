class: CommandLineTool
id: kssd_shuffle.cwl
inputs:
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: use_default
  doc: "All options use default value, which assuming prokaryote genomes, k=8, s=5,\
    \ and l=2.\v"
  type: boolean
  inputBinding:
    prefix: --usedefault
outputs: []
cwlVersion: v1.1
baseCommand:
- kssd
- shuffle
