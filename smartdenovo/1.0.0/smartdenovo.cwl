class: CommandLineTool
id: smartdenovo.pl.cwl
inputs:
- id: read_sfa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: p
  doc: output prefix [wtasm]
  type: string
  inputBinding:
    prefix: -p
- id: e
  doc: engine of overlaper, compressed kmer overlapper(zmo), dot matrix overlapper(dmo),
    [dmo]
  type: string
  inputBinding:
    prefix: -e
- id: t
  doc: number of threads [8]
  type: long
  inputBinding:
    prefix: -t
- id: k
  doc: k-mer length for overlapping [16] for large genome as human, please use 17
  type: long
  inputBinding:
    prefix: -k
- id: j
  doc: min read length [5000]
  type: long
  inputBinding:
    prefix: -J
- id: c
  doc: generate consensus, [0]
  type: long
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- smartdenovo.pl
