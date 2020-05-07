class: CommandLineTool
id: indexer.cwl
inputs:
- id: s
  doc: '|skip      skip junk [1]'
  type: boolean
  inputBinding:
    prefix: -s
- id: t
  doc: '|tail      tail pattern [^>]'
  type: boolean
  inputBinding:
    prefix: -t
- id: i
  doc: '|included  tail pattern is part of entry [0]'
  type: boolean
  inputBinding:
    prefix: -i
- id: p
  doc: '|pattern   id selection pattern [^>[^|]+\|([^\s|;]+)]'
  type: boolean
  inputBinding:
    prefix: -p
- id: m
  doc: multiple indices per entry [0]
  type: boolean
  inputBinding:
    prefix: -m
- id: l
  doc: '|idLength  maximum id length [14]'
  type: boolean
  inputBinding:
    prefix: -l
- id: lp
  doc: maximum position length [10]
  type: boolean
  inputBinding:
    prefix: -lp
- id: ll
  doc: maximum size length [6]
  type: boolean
  inputBinding:
    prefix: -ll
outputs: []
cwlVersion: v1.1
baseCommand:
- indexer
