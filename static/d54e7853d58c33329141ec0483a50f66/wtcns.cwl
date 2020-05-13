class: CommandLineTool
id: wtcns.cwl
inputs:
- id: t
  doc: Number of threads, [16]
  type: long
  inputBinding:
    prefix: -t
- id: p
  doc: Total parallel jobs, [1]
  type: long
  inputBinding:
    prefix: -P
- id: p
  doc: Index of current job (0-based), [0] Suppose to run wtcns for the same layout
    file parallelly in 60 cpu. For cpu1, -P 60 -p 0; cpu2, -P 60 -p 1, ...
  type: long
  inputBinding:
    prefix: -p
- id: i
  doc: Input file, layout from wtlay, +
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: Output file, consensus sequences, [STDOUT]
  type: string
  inputBinding:
    prefix: -o
- id: f
  doc: Force overwrite
  type: boolean
  inputBinding:
    prefix: -f
- id: h
  doc: Trun on homopolymer compression
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
- id: o
  doc: 'Alignment penalty: insertion or deletion, used in first round [-3]'
  type: long
  inputBinding:
    prefix: -O
- id: i
  doc: 'Alignment penalty: insertion, used in rounds after first, [-2]'
  type: long
  inputBinding:
    prefix: -I
- id: d
  doc: 'Alignment penalty: deletion, used in rounds after first, [-3]'
  type: long
  inputBinding:
    prefix: -D
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
  doc: Minimum bandwidth, iteratively doubled to maximum [50]
  type: long
  inputBinding:
    prefix: -w
- id: w
  doc: Maximum bandwidth, [3200]
  type: long
  inputBinding:
    prefix: -W
- id: e
  doc: Maximum bandwidth at ending extension, [800]
  type: long
  inputBinding:
    prefix: -e
- id: r
  doc: Basic bandwidth in refine-alignment, [8]
  type: long
  inputBinding:
    prefix: -r
- id: m
  doc: Minimum alignment identity, [0.5]
  type: double
  inputBinding:
    prefix: -m
- id: y
  doc: Penalty of backbone edge in calling consensus, [0.5]
  type: double
  inputBinding:
    prefix: -Y
- id: n
  doc: Penalty of alternative edge in calling consensus, [0.2] The above two options
    control whether the consensus look like backbone or alternative Default 0.5 and
    0.2, will let the consensus don't look like backbone
  type: double
  inputBinding:
    prefix: -N
- id: n
  doc: Number of iterations for consensus calling, the larger, the accurater, the
    slower [6]
  type: long
  inputBinding:
    prefix: -n
- id: a
  doc: Align reads against final consensus, and output to <-a>
  type: string
  inputBinding:
    prefix: -a
- id: a
  doc: Disable fast zmer align in final aligning (see -a), use standard smith-waterman
    More than once -A, will disable fast zmer align in all process
  type: boolean
  inputBinding:
    prefix: -A
- id: v
  doc: 'Ouput call variants and print to <-a>, -V 2.05 mean: min_allele_count>=2,min_allele_freq>=0.05'
  type: double
  inputBinding:
    prefix: -V
- id: v
  doc: Verbose, BE careful, HUGEEEEEEEE output on STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- wtcns
