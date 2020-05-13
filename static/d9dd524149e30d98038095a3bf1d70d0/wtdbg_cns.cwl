class: CommandLineTool
id: wtdbg_cns.cwl
inputs:
- id: t
  doc: Number of threads, [1]
  type: long
  inputBinding:
    prefix: -t
- id: i
  doc: Input file(s) *.utg.cns from wtdbg, +, [STDIN]
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: Output files, [STDOUT]
  type: string
  inputBinding:
    prefix: -o
- id: f
  doc: Force overwrite
  type: boolean
  inputBinding:
    prefix: -f
- id: j
  doc: Expected length of node, or say the overlap length of two adject units in layout
    file, [1000] bp
  type: long
  inputBinding:
    prefix: -j
- id: k
  doc: Kmer size for long reads, [15]
  type: long
  inputBinding:
    prefix: -k
- id: z
  doc: Z-cutoff, drop the lower  (score / <-X>), [4]
  type: long
  inputBinding:
    prefix: -Z
- id: w
  doc: W-cutoff, drop the lagger (position), [48] In DAG correction, -W set the bandwidth
    of alignment
  type: long
  inputBinding:
    prefix: -W
- id: h
  doc: High coverage bonus, [1]
  type: long
  inputBinding:
    prefix: -H
- id: l
  doc: High coverage cutoff = avg_cov / <-L> [10]
  type: long
  inputBinding:
    prefix: -L
- id: c
  doc: 'Candidate strategy, 0: best-kmers, 1: median length, 2: first (include), 3:
    first (exclude), 4: longest, 5, shortest, [0] In DAG correction, force to use
    strategy 2'
  type: long
  inputBinding:
    prefix: -c
- id: m
  doc: Match score, [2]
  type: long
  inputBinding:
    prefix: -M
- id: x
  doc: Mismatch score, [-7]
  type: long
  inputBinding:
    prefix: -X
- id: i
  doc: Insertion score, [-3]
  type: long
  inputBinding:
    prefix: -I
- id: d
  doc: Deletion score, [-4]
  type: long
  inputBinding:
    prefix: -D
- id: e
  doc: Gap extension score, [-2]
  type: long
  inputBinding:
    prefix: -E
- id: m
  doc: '1: DBG correction; 2: DAG correction, [1]'
  type: long
  inputBinding:
    prefix: -m
- id: s
  doc: whether to correct structure before error correction, [1]
  type: long
  inputBinding:
    prefix: -S
- id: v
  doc: Verbose
  type: boolean
  inputBinding:
    prefix: -v
- id: v
  doc: Print version information and then exit
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- wtdbg-cns
