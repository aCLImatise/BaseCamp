class: CommandLineTool
id: prophyle_classify.cwl
inputs:
- id: k
  doc: k-mer length [detect automatically from the index]
  type: long
  inputBinding:
    prefix: -k
- id: m
  doc: 'measure: h1=hit count, c1=coverage, h2=norm.hit count, c2=norm.coverage [h1]'
  type: string
  inputBinding:
    prefix: -m
- id: f
  doc: output format [sam]
  type: string
  inputBinding:
    prefix: -f
- id: l
  doc: log file
  type: string
  inputBinding:
    prefix: -l
- id: p
  doc: incorporate sequences and qualities into SAM records
  type: boolean
  inputBinding:
    prefix: -P
- id: a
  doc: annotate assignments (using tax. information from NHX)
  type: boolean
  inputBinding:
    prefix: -A
- id: l
  doc: replace read assignments by their LCA
  type: boolean
  inputBinding:
    prefix: -L
- id: x
  doc: replace k-mer matches by their LCA
  type: boolean
  inputBinding:
    prefix: -X
- id: m
  doc: mimic Kraken (equivalent to "-m h1 -f kraken -L -X")
  type: boolean
  inputBinding:
    prefix: -M
- id: c
  doc: use C++ impl. of the assignment algorithm (experimental)
  type: boolean
  inputBinding:
    prefix: -C
- id: k
  doc: force restarted search mode
  type: boolean
  inputBinding:
    prefix: -K
- id: c
  doc: '[STR [STR ...]]  advanced configuration (a JSON dictionary)'
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- prophyle
- classify
