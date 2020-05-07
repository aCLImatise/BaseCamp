class: CommandLineTool
id: hcluster_sg.cwl
inputs:
- id: w
  doc: minimum edge weight [20]
  type: string
  inputBinding:
    prefix: -w
- id: s
  doc: minimum edge density between a join [0.50]
  type: string
  inputBinding:
    prefix: -s
- id: m
  doc: maximum size [500]
  type: string
  inputBinding:
    prefix: -m
- id: o
  doc: output file [stdout]
  type: string
  inputBinding:
    prefix: -o
- id: c
  doc: only find single-linkage clusters (bypass h-cluster)
  type: boolean
  inputBinding:
    prefix: -c
- id: v
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: -v
- id: b
  doc: breaking edge density [0.10]
  type: string
  inputBinding:
    prefix: -b
- id: o
  doc: the once-fail-inactive-forever mode
  type: boolean
  inputBinding:
    prefix: -O
- id: r
  doc: weight resolution for '-O' [5]
  type: boolean
  inputBinding:
    prefix: -r
- id: c
  doc: category file
  type: File
  inputBinding:
    prefix: -C
- id: l
  doc: stringent level ('3' is the strictest) [2]
  type: string
  inputBinding:
    prefix: -L
outputs: []
cwlVersion: v1.1
baseCommand:
- hcluster_sg
