class: CommandLineTool
id: wtgbo.cwl
inputs:
- id: f
  doc: Force overwrite output file
  type: boolean
  inputBinding:
    prefix: -f
- id: c
  doc: Minimum estimated coverage of edge to be trusted, [1] edge coverage is calculated
    by counting overlaps that can replace this edge
  type: long
  inputBinding:
    prefix: -c
- id: q
  doc: Use number of matches as alignment score
  type: boolean
  inputBinding:
    prefix: -Q
- id: q
  doc: Best score cutoff, say best overlap MUST have alignment score >= <-r> * read's
    best score [0.95]
  type: double
  inputBinding:
    prefix: -q
- id: h
  doc: Turn off homopolymer compression
  type: boolean
  inputBinding:
    prefix: -H
- id: z
  doc: Smaller kmer size (z-mer), 5 <= <-z> <= 16, [10]
  type: long
  inputBinding:
    prefix: -z
- id: z
  doc: Filter high frequency z-mers, maybe repetitive, [100]
  type: long
  inputBinding:
    prefix: -Z
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
- id: r
  doc: Minimum size of total seeding region for zmer windows, [300]
  type: long
  inputBinding:
    prefix: -r
- id: l
  doc: Maximum variant of uncompressed sizes between two matched hz-kmer, [2]
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
  doc: 'Alignment penalty: read end clipping, 0: distable HSP extension, otherwise
    set to -50 or other [-50]'
  type: long
  inputBinding:
    prefix: -T
- id: w
  doc: Minimum bandwidth, iteratively doubled to maximum [50]
  type: long
  inputBinding:
    prefix: -w
- id: w
  doc: Maximum bandwidth, [3200]
  type: long
  inputBinding:
    prefix: -W
- id: n
  doc: Refine the alignment
  type: boolean
  inputBinding:
    prefix: -n
- id: n
  doc: Max turns of iteration, [5]
  type: long
  inputBinding:
    prefix: -N
outputs: []
cwlVersion: v1.1
baseCommand:
- wtgbo
