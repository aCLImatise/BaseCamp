class: CommandLineTool
id: descartes_folium.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- descartes-folium
