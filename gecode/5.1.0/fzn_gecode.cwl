class: CommandLineTool
id: fzn_gecode.cwl
inputs:
- id: supported
  doc: 'version: 1.6'
  type: string
  inputBinding:
    prefix: '- Supported'
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
- id: mode
  doc: '(solution, stat, gist) default: solution how to execute script'
  type: boolean
  inputBinding:
    prefix: -mode
- id: s
  doc: '(optional: false, 0, true, 1) default: false emit statistics'
  type: boolean
  inputBinding:
    prefix: -s
- id: o
  doc: '(string) default: NONE file to send output to'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- fzn-gecode
