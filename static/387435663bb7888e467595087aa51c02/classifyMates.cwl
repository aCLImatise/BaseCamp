class: CommandLineTool
id: classifyMates.cwl
inputs:
- id: g
  doc: Read fragments from here
  type: string
  inputBinding:
    prefix: -G
- id: o
  doc: Read overlaps from here
  type: string
  inputBinding:
    prefix: -O
- id: o
  doc: Write results here
  type: string
  inputBinding:
    prefix: -o
- id: e
  doc: Use overlaps with less than 'maxError' fraction error (default 0.045)
  type: long
  inputBinding:
    prefix: -e
- id: t
  doc: Use 'n' compute threads
  type: string
  inputBinding:
    prefix: -t
- id: m
  doc: "Use at most 'm' GB memory (default: unlimited)"
  type: string
  inputBinding:
    prefix: -m
- id: sl
  doc: '[-m]        Search for mates in libraries l-m'
  type: string
  inputBinding:
    prefix: -sl
- id: bl
  doc: '[-m]        Use libraries l-m for searching'
  type: string
  inputBinding:
    prefix: -bl
- id: cache
  doc: Write loaded data to cache files
  type: boolean
  inputBinding:
    prefix: -cache
- id: cache_only
  doc: Write loaded data to cache files, stop after building
  type: boolean
  inputBinding:
    prefix: -cacheonly
- id: q
  doc: Don't report progress.
  type: boolean
  inputBinding:
    prefix: -q
- id: min
  doc: Mates must be at least m bases apart
  type: string
  inputBinding:
    prefix: -min
- id: max
  doc: Mates must be at most m bases apart
  type: string
  inputBinding:
    prefix: -max
- id: in_nie
  doc: Mates must be innie (NOT SUPPORTED)
  type: boolean
  inputBinding:
    prefix: -innie
- id: out_tie
  doc: Mates must be outtie
  type: boolean
  inputBinding:
    prefix: -outtie
- id: bfs
  doc: Use 'breadth-first search'; search at most N fragments
  type: string
  inputBinding:
    prefix: -bfs
- id: dfs
  doc: Use 'depth-first search'; search to depth N overlaps
  type: string
  inputBinding:
    prefix: -dfs
- id: rfs
  doc: Use 'random-path search'; search at most N paths
  type: string
  inputBinding:
    prefix: -rfs
- id: no_suspicious
  doc: Don't search for suspicious pairs.
  type: boolean
  inputBinding:
    prefix: -nosuspicious
outputs: []
cwlVersion: v1.1
baseCommand:
- classifyMates
