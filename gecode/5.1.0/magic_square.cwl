class: CommandLineTool
id: magic_square.cwl
inputs:
- id: version
  doc: ': 5.1.0'
  type: boolean
  inputBinding:
    prefix: '- Version'
- id: variable
  doc: ': BoolVar IntVar SetVar FloatVar '
  type: string
  inputBinding:
    prefix: '- Variable'
- id: trigonometric
  doc: 'transcendental float constraints: disabled'
  type: string
  inputBinding:
    prefix: '- Trigonometric'
- id: thread
  doc: ': enabled (8 processing units)'
  type: string
  inputBinding:
    prefix: '- Thread'
- id: gist
  doc: ': disabled'
  type: string
  inputBinding:
    prefix: '- Gist'
outputs: []
cwlVersion: v1.1
baseCommand:
- magic-square
