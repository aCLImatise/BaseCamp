class: CommandLineTool
id: analyzePosMap.cwl
inputs:
- id: p
  doc: prefix of posmap files (e.g., posmap-prefix.posmap.frgctg)
  type: string
  inputBinding:
    prefix: -p
- id: o
  doc: prefix of output files
  type: string
  inputBinding:
    prefix: -o
- id: g
  doc: path to gkpStore (not used)
  type: string
  inputBinding:
    prefix: -g
- id: a
  doc: 'select an analysis (multiple -A allowed) readsingaps - probability that a
    gap can be filled with a read libraryfate - per library detail of where each read
    ended up - and the status of each mate surrogates  - '
  type: string
  inputBinding:
    prefix: -A
outputs: []
cwlVersion: v1.1
baseCommand:
- analyzePosMap
