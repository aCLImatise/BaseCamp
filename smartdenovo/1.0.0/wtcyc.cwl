class: CommandLineTool
id: wtcyc.cwl
inputs:
- id: long_read_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: t
  doc: Number of threads, [1]
  type: long
  inputBinding:
    prefix: -t
- id: p
  doc: Total parallel jobs, [1]
  type: long
  inputBinding:
    prefix: -P
- id: p
  doc: Index of current job (0-based), [0] Suppose to run it parallelly in 60 nodes.
    For node1, -P 60 -p 0; node2, -P 60 -p 1, ...
  type: long
  inputBinding:
    prefix: -p
- id: o
  doc: Output of reads' regions after trimming, [-]
  type: string
  inputBinding:
    prefix: -o
- id: a
  doc: Output of alignments, [NULL]
  type: string
  inputBinding:
    prefix: -a
- id: f
  doc: Force overwrite output file
  type: boolean
  inputBinding:
    prefix: -f
- id: s
  doc: Mininum alignment score, [400]
  type: long
  inputBinding:
    prefix: -s
- id: m
  doc: Mininum alignment identity, [0.7]
  type: long
  inputBinding:
    prefix: -m
- id: m
  doc: 'Alignment penalty: match, [2]'
  type: long
  inputBinding:
    prefix: -M
- id: x
  doc: 'Alignment penalty: mismatch, [-5]'
  type: long
  inputBinding:
    prefix: -X
- id: o
  doc: 'Alignment penalty: gap open, [-3]'
  type: long
  inputBinding:
    prefix: -O
- id: e
  doc: 'Alignment penalty: gap extension, [-1]'
  type: long
  inputBinding:
    prefix: -E
- id: t
  doc: 'Alignment penalty: read end clipping, 0: distable HSP extension, otherwise
    set to -30 or other [-100]'
  type: long
  inputBinding:
    prefix: -T
- id: w
  doc: Bandwidth, [800]
  type: long
  inputBinding:
    prefix: -W
outputs: []
cwlVersion: v1.1
baseCommand:
- wtcyc
