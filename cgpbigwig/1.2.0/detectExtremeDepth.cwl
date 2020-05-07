class: CommandLineTool
id: detectExtremeDepth.cwl
inputs:
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bigwig
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: and
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: identify
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: regions
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: outside
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: the
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: normal
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: range
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: named
  doc: input file with '.tab' extension
  type: string
  inputBinding:
    prefix: '- named'
- id: without
  doc: "'chr' prefix, will test with and without the 'chr' for you."
  type: boolean
  inputBinding:
    prefix: '- without'
- id: if
  doc: "'-r' defined '.{val}' will prefix '.bed'"
  type: boolean
  inputBinding:
    prefix: '- if'
outputs: []
cwlVersion: v1.1
baseCommand:
- detectExtremeDepth
