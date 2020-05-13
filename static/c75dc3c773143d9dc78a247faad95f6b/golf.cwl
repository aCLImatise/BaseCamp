class: CommandLineTool
id: golf.cwl
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
- id: trace
  doc: '(init,prune,fix,fail,done,propagate,commit,none,all,variable,general) default:
    none trace flags (comma-separated list)'
  type: boolean
  inputBinding:
    prefix: -trace
- id: w
  doc: '(int) default: 9 number of weeks'
  type: boolean
  inputBinding:
    prefix: -w
- id: g
  doc: '(int) default: 8 number of groups'
  type: boolean
  inputBinding:
    prefix: -g
- id: s
  doc: '(int) default: 4 number of players per group'
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- golf
