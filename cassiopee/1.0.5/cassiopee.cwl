class: CommandLineTool
id: cassiopee.cwl
inputs:
- id: l
  doc: ': maximum index depth / max pattern size'
  type: boolean
  inputBinding:
    prefix: -l
- id: u
  doc: ': save index for later use'
  type: boolean
  inputBinding:
    prefix: -u
- id: s
  doc: ': sequence to index'
  type: boolean
  inputBinding:
    prefix: -s
- id: p
  doc: ': pattern to search'
  type: boolean
  inputBinding:
    prefix: -p
- id: f
  doc: ': file containing pattern to search'
  type: boolean
  inputBinding:
    prefix: -f
- id: o
  doc: ': output file'
  type: boolean
  inputBinding:
    prefix: -o
- id: r
  doc: ': apply tree reduction'
  type: boolean
  inputBinding:
    prefix: -r
- id: m
  doc: ': search mode: 0=DNA, 1=RNA, 2=Protein'
  type: boolean
  inputBinding:
    prefix: -m
- id: a
  doc: ': allow alphabet ambiguity search'
  type: boolean
  inputBinding:
    prefix: -a
- id: n
  doc: ': max consecutive N allowed matches in search'
  type: boolean
  inputBinding:
    prefix: -n
- id: e
  doc: ': max substitution allowed matches in search'
  type: boolean
  inputBinding:
    prefix: -e
- id: i
  doc: ': max indel allowed matches in search'
  type: boolean
  inputBinding:
    prefix: -i
- id: g
  doc: ': generates a dot file of the graph'
  type: boolean
  inputBinding:
    prefix: -g
- id: d
  doc: ': max depth of the graph'
  type: boolean
  inputBinding:
    prefix: -d
- id: t
  doc: ': output format: 0:tsv (default), 1:json'
  type: boolean
  inputBinding:
    prefix: -t
- id: x
  doc: ': minimum position in sequence'
  type: boolean
  inputBinding:
    prefix: -x
- id: y
  doc: ': maximum position in sequence'
  type: boolean
  inputBinding:
    prefix: -y
- id: v
  doc: ': show version'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- cassiopee
