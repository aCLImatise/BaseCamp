class: CommandLineTool
id: heinz.cwl
inputs:
- id: fdr
  doc: Specifies fdr
  type: string
  inputBinding:
    prefix: -FDR
- id: a
  doc: Specifies a
  type: string
  inputBinding:
    prefix: -a
- id: e
  doc: Edge list file
  type: string
  inputBinding:
    prefix: -e
- id: enum
  doc: 'Enumeration mode: 0 - No enumeration 1 - No root 2 - Fix root 3 - No root
    per component (default)'
  type: long
  inputBinding:
    prefix: -enum
- id: f
  doc: 'Formulation of the problem: 0 - Single Commodity Flow 1 - Multi Commodity
    Flow 2 - Cut formulation (Flow)  3 - Cut formulation (Flow-min) 4 - Cut formulation
    (Node-separator) 5 - Cut formulation (Node-separator, BK, default) 6 - Tree DP
    7 - Tree DP heuristic (fixed_edge) 8 - Tree DP heuristic (random_edge) 9 - Tree
    DP heuristic (uniform_edge)'
  type: long
  inputBinding:
    prefix: -f
- id: lambda
  doc: Specifies lambda
  type: string
  inputBinding:
    prefix: -lambda
- id: m
  doc: 'Specifies number of threads (default: 1)'
  type: long
  inputBinding:
    prefix: -m
- id: max_cuts
  doc: 'Specifies the maximum number of cuts per step (only in conjuction with -f
    2, optional, default: -1)'
  type: long
  inputBinding:
    prefix: -maxCuts
- id: n
  doc: Node file
  type: string
  inputBinding:
    prefix: -n
- id: o
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
- id: p
  doc: Enable preprocessing
  type: boolean
  inputBinding:
    prefix: -p
- id: r
  doc: Specifies the root node (optional)
  type: string
  inputBinding:
    prefix: -r
- id: s
  doc: STP node file
  type: string
  inputBinding:
    prefix: -s
- id: t
  doc: 'Time limit (in seconds, default: -1)'
  type: long
  inputBinding:
    prefix: -t
- id: verbosity
  doc: 'Specifies the verbosity level: 0 - No output 1 - Only necessary output 2 -
    More verbose output (default) 3 - Debug output'
  type: long
  inputBinding:
    prefix: --verbosity
- id: version
  doc: Show version number
  type: boolean
  inputBinding:
    prefix: -version
outputs: []
cwlVersion: v1.1
baseCommand:
- heinz
