class: CommandLineTool
id: squizz.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: a
  doc: '... Detect alignment formats only.'
  type: boolean
  inputBinding:
    prefix: -A
- id: s
  doc: '... Detect sequence formats only.'
  type: boolean
  inputBinding:
    prefix: -S
- id: c
  doc: '... Convert into format <fmt>.'
  type: string
  inputBinding:
    prefix: -c
- id: f
  doc: '... Assume input format <fmt>.'
  type: string
  inputBinding:
    prefix: -f
- id: l
  doc: '... List all supported formats.'
  type: boolean
  inputBinding:
    prefix: -l
- id: n
  doc: '... Count and report entries number.'
  type: boolean
  inputBinding:
    prefix: -n
- id: s
  doc: '... Disable strict format checks.'
  type: boolean
  inputBinding:
    prefix: -s
- id: v
  doc: '... Display version information and exit.'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- squizz
