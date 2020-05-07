class: CommandLineTool
id: wtext.cwl
inputs:
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
- id: i
  doc: Long reads sequences file, + *
  type: string
  inputBinding:
    prefix: -i
- id: b
  doc: 'Long reads previous retained region, often from wtcyc, + Format: read_name\toffset\tlength'
  type: string
  inputBinding:
    prefix: -B
- id: b
  doc: 'Long reads retained region, often from wtobt, + Format: read_name\toffset\tlength'
  type: string
  inputBinding:
    prefix: -b
- id: j
  doc: 'Overlap file(s), + * Format: reads1\t+/-\tlen1\tbeg1\tend1\treads2\t+/-\tlen2\tbeg2\tend2\tscore\tidentity<float>\tmat\tmis\tins\tdel\tcigar'
  type: string
  inputBinding:
    prefix: -j
- id: o
  doc: Output file of extended alignments, -:stdout, *
  type: string
  inputBinding:
    prefix: -o
- id: f
  doc: Force overwrite
  type: boolean
  inputBinding:
    prefix: -f
- id: w
  doc: Bandwidth, [800]
  type: double
  inputBinding:
    prefix: -W
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
  doc: 'Alignment penalty: insertion or deletion, [-3]'
  type: long
  inputBinding:
    prefix: -O
- id: e
  doc: 'Alignment penalty: gap extension, [-1]'
  type: long
  inputBinding:
    prefix: -E
- id: t
  doc: 'Alignment penalty: read end clipping [-100]'
  type: long
  inputBinding:
    prefix: -T
- id: s
  doc: Maximum extension (bp) in each end, [400]
  type: long
  inputBinding:
    prefix: -S
outputs: []
cwlVersion: v1.1
baseCommand:
- wtext
