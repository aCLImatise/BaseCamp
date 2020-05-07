class: CommandLineTool
id: spades_bwa_bwasw.cwl
inputs:
- id: bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: b_was_w
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: target_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: query_fa
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: query_2fa
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: a
  doc: score for a match [1]
  type: long
  inputBinding:
    prefix: -a
- id: b
  doc: mismatch penalty [3]
  type: long
  inputBinding:
    prefix: -b
- id: q
  doc: gap open penalty [5]
  type: long
  inputBinding:
    prefix: -q
- id: r
  doc: gap extension penalty [2]
  type: long
  inputBinding:
    prefix: -r
- id: w
  doc: band width [50]
  type: long
  inputBinding:
    prefix: -w
- id: m
  doc: mask level [0.50]
  type: double
  inputBinding:
    prefix: -m
- id: t
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: f
  doc: file to output results to instead of stdout
  type: File
  inputBinding:
    prefix: -f
- id: h
  doc: in SAM output, use hard clipping instead of soft clipping
  type: boolean
  inputBinding:
    prefix: -H
- id: c
  doc: copy FASTA/Q comment to SAM output
  type: boolean
  inputBinding:
    prefix: -C
- id: m
  doc: mark multi-part alignments as secondary
  type: boolean
  inputBinding:
    prefix: -M
- id: s
  doc: skip Smith-Waterman read pairing
  type: boolean
  inputBinding:
    prefix: -S
- id: i
  doc: ignore pairs with insert >=INT for inferring the size distr [20000]
  type: long
  inputBinding:
    prefix: -I
- id: t
  doc: score threshold divided by a [30]
  type: long
  inputBinding:
    prefix: -T
- id: c
  doc: coefficient of length-threshold adjustment [5.5]
  type: double
  inputBinding:
    prefix: -c
- id: z
  doc: Z-best [1]
  type: long
  inputBinding:
    prefix: -z
- id: s
  doc: maximum seeding interval size [3]
  type: long
  inputBinding:
    prefix: -s
- id: n
  doc: '# seeds to trigger rev aln; 2*INT is also the chaining threshold [5]'
  type: long
  inputBinding:
    prefix: -N
- id: g
  doc: maximum gap size during chaining [10000]
  type: long
  inputBinding:
    prefix: -G
outputs: []
cwlVersion: v1.1
baseCommand:
- spades-bwa
- bwasw
