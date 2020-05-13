class: CommandLineTool
id: overmerry.cwl
inputs:
- id: g
  doc: path to the gkpStore
  type: string
  inputBinding:
    prefix: -g
- id: m
  doc: mer size in bases
  type: string
  inputBinding:
    prefix: -m
- id: c
  doc: compression level; homopolymer runs longer than this length are compressed
    to exactly this length
  type: string
  inputBinding:
    prefix: -c
- id: t
  doc: ignore mers occuring more than 'threshold' times
  type: string
  inputBinding:
    prefix: -T
- id: mc
  doc: file of mercounts
  type: string
  inputBinding:
    prefix: -mc
- id: t
  doc: number of compute threads
  type: string
  inputBinding:
    prefix: -t
- id: tb
  doc: hash table fragment IID range
  type: string
  inputBinding:
    prefix: -tb
- id: te
  doc: hash table fragment IID range fragments with IID x, m <= x < n, are used for
    the hash table
  type: string
  inputBinding:
    prefix: -te
- id: qb
  doc: query fragment IID range (must be >= -tb)
  type: string
  inputBinding:
    prefix: -qb
- id: qe
  doc: query fragment IID range fragments with IID y, M <= y < N, are used for the
    queries
  type: string
  inputBinding:
    prefix: -qe
- id: v
  doc: entertain the user with progress reports
  type: boolean
  inputBinding:
    prefix: -v
- id: o
  doc: output written here
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- overmerry
