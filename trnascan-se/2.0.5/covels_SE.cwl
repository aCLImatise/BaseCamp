class: CommandLineTool
id: covels_SE.cwl
inputs:
- id: cove_ls
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: c
  doc: ': do complementary strand too'
  type: boolean
  inputBinding:
    prefix: -c
- id: g
  doc: ': set background expected GC content (0.5 default)'
  type: string
  inputBinding:
    prefix: -g
- id: o
  doc: ': save hits in <file>'
  type: File
  inputBinding:
    prefix: -o
- id: t
  doc: ': set score reporting threshold'
  type: string
  inputBinding:
    prefix: -t
- id: w
  doc: ': set scanning window size'
  type: string
  inputBinding:
    prefix: -w
- id: d
  doc: ': save name of last sequence processed'
  type: File
  inputBinding:
    prefix: -D
- id: e
  doc: ': set epsilon for fast search'
  type: boolean
  inputBinding:
    prefix: -E
- id: f
  doc: ': fast heuristic search'
  type: boolean
  inputBinding:
    prefix: -F
outputs: []
cwlVersion: v1.1
baseCommand:
- covels-SE
