class: CommandLineTool
id: wtmsa.cwl
inputs:
- id: p
  doc: Total parallel jobs, [1]
  type: long
  inputBinding:
    prefix: -P
- id: p
  doc: Index of current job (0-based), [0] Suppose to run wtmsa for the same layout
    file parallelly in 60 cpu. For cpu1, -P 60 -p 0; cpu2, -P 60 -p 1, ...
  type: long
  inputBinding:
    prefix: -p
- id: i
  doc: Input file, layout from wtlay, +, *
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: Output file, consensus sequences, *
  type: string
  inputBinding:
    prefix: -o
- id: b
  doc: Print backbone sequences on file for debug [NULL]
  type: string
  inputBinding:
    prefix: -B
- id: g
  doc: Print dot graph on file, H U G E, be careful, [NULL]
  type: string
  inputBinding:
    prefix: -G
- id: f
  doc: Force overwrite
  type: boolean
  inputBinding:
    prefix: -f
- id: h
  doc: Trun off homopolymer compression
  type: boolean
  inputBinding:
    prefix: -H
- id: z
  doc: Zmer size, 5 <= <-z> <= 16, [10]
  type: long
  inputBinding:
    prefix: -z
- id: y
  doc: Zmer window, [800]
  type: long
  inputBinding:
    prefix: -y
- id: r
  doc: Minimum size of seeding region within zmer window, [200]
  type: long
  inputBinding:
    prefix: -R
- id: l
  doc: Maximum variant of uncompressed sizes between two matched zmer, [2]
  type: long
  inputBinding:
    prefix: -l
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
- id: i
  doc: 'Alignment penalty: insertion, [-2]'
  type: long
  inputBinding:
    prefix: -I
- id: d
  doc: 'Alignment penalty: deletion, [-3]'
  type: long
  inputBinding:
    prefix: -D
- id: v
  doc: turn on homopolymer merge penalty
  type: long
  inputBinding:
    prefix: -V
- id: e
  doc: 'Alignment penalty: gap extension, [-1]'
  type: long
  inputBinding:
    prefix: -E
- id: t
  doc: 'Alignment penalty: read end clipping [-10]'
  type: long
  inputBinding:
    prefix: -T
- id: f
  doc: Disable PhreadQV in refine-alignment
  type: boolean
  inputBinding:
    prefix: -F
- id: w
  doc: Minimum bandwidth of pairwise alignment, iteratively doubled to maximum [50]
  type: long
  inputBinding:
    prefix: -w
- id: w
  doc: Maximum bandwidth of pairwise alignment, [3200]
  type: long
  inputBinding:
    prefix: -W
- id: e
  doc: Maximum bandwidth at graph alignment and ending extension, [800]
  type: long
  inputBinding:
    prefix: -e
- id: g
  doc: Basic bandwidth in graph alignment, [100]
  type: long
  inputBinding:
    prefix: -g
- id: m
  doc: Minimum alignment identity, [0.5]
  type: double
  inputBinding:
    prefix: -m
- id: n
  doc: Number of iterations for consensus calling, the more, the accurater, the slower
    [2]
  type: long
  inputBinding:
    prefix: -n
- id: v
  doc: Verbose, +
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- wtmsa
