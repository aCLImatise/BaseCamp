class: CommandLineTool
id: ltr_finder.cwl
inputs:
- id: o
  doc: gap open penalty, default is 3
  type: string
  inputBinding:
    prefix: -o
- id: t
  doc: gap extension penalty, default is 1
  type: string
  inputBinding:
    prefix: -t
- id: e
  doc: gap end penalty, default is 1
  type: string
  inputBinding:
    prefix: -e
- id: m
  doc: match score, default is 2
  type: string
  inputBinding:
    prefix: -m
- id: u
  doc: unmatch score, default is -2
  type: string
  inputBinding:
    prefix: -u
- id: d
  doc: Max distance between 5'&3'LTR, default is 20000
  type: string
  inputBinding:
    prefix: -D
- id: d
  doc: Min distance between 5'&3'LTR, default is 1000
  type: string
  inputBinding:
    prefix: -d
- id: l
  doc: Max length of 5'&3'LTR, default is 3500
  type: string
  inputBinding:
    prefix: -L
- id: l
  doc: Min length of 5'&3'LTR, default is 100
  type: string
  inputBinding:
    prefix: -l
- id: p
  doc: min length of exact match pair, default is 20
  type: string
  inputBinding:
    prefix: -p
- id: g
  doc: Max gap between joined pairs, default is 50
  type: string
  inputBinding:
    prefix: -g
- id: g
  doc: Max gap between RT sub-domains, default is 2
  type: string
  inputBinding:
    prefix: -G
- id: t
  doc: Min sub-domains found in a RT domain, default is 4
  type: string
  inputBinding:
    prefix: -T
- id: j
  doc: Threshold for join new sequence in existed alignment new alignment similarity
    higher than this will be joined, default is 0.70
  type: string
  inputBinding:
    prefix: -j
- id: j
  doc: Threshold for split existed alignment to two part new alignment similarity
    lower than this will be split, set this threshold lower than -j, means turn it
    off, default is 0.90
  type: string
  inputBinding:
    prefix: -J
- id: s
  doc: output Score limit, default is 6.00, [0,10]
  type: string
  inputBinding:
    prefix: -S
- id: m
  doc: min LTR similarity threshold, default is 0.00, [0,1]
  type: string
  inputBinding:
    prefix: -M
- id: b
  doc: Boundary alignment sharpness threshold, higher one. one of the two edge's sharpness
    must higher than this threshold, default is 0.400, [0,1]
  type: string
  inputBinding:
    prefix: -B
- id: b
  doc: Boundary alignment sharpness threshold, lower one. both of the two edge's sharpness
    must higher than this threshold, default is 0.400, [0,1]
  type: string
  inputBinding:
    prefix: -b
- id: r
  doc: 'PBS detecting threshold, min tRNA match length: 14, [1,18]'
  type: string
  inputBinding:
    prefix: -r
- id: w
  doc: 'output format: [0]-full, 1-summary, 2-table.'
  type: string
  inputBinding:
    prefix: -w
- id: o
  doc: output alignment length(only affect -w0), default is 40
  type: string
  inputBinding:
    prefix: -O
- id: p
  doc: SeqIDs, will only calculate matched SeqID POSIX style regular express is supported.
  type: string
  inputBinding:
    prefix: -P
- id: s
  doc: tRNA sequence file(FASTA format)
  type: File
  inputBinding:
    prefix: -s
- id: f
  doc: data file used to draw figure
  type: File
  inputBinding:
    prefix: -f
- id: a
  doc: Use ps_scan to predict protein domain
  type: string
  inputBinding:
    prefix: -a
- id: x
  doc: Output in html format
  type: boolean
  inputBinding:
    prefix: -x
- id: e
  doc: LTR must have edge signal (at least two of PBS,PPT,TSR)
  type: boolean
  inputBinding:
    prefix: -E
- id: c
  doc: detect Centriole, delete highly repeat regions
  type: boolean
  inputBinding:
    prefix: -C
- id: f
  doc: 01string      Filter to choose desired result,default is 0 10000000000 5'-LTR
    must have TG 01000000000 5'-LTR must have CA 00100000000 3'-LTR must have TG 00010000000
    3'-LTR must have CA 00001000000 TSR must be found 00000100000 PBS must be found
    00000010000 PPT must be found 00000001000 RT domain muse be found 00000000100
    Integrase core must be found 00000000010 Integrase c-term must be found 00000000001
    RNase H must be found
  type: boolean
  inputBinding:
    prefix: -F
outputs: []
cwlVersion: v1.1
baseCommand:
- ltr_finder
