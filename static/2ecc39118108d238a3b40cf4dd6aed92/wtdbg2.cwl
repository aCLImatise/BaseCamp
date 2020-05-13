class: CommandLineTool
id: wtdbg2.cwl
inputs:
- id: g
  doc: Approximate genome size (k/m/g suffix allowed) [0]
  type: string
  inputBinding:
    prefix: -g
- id: x
  doc: Choose the best <float> depth from input reads(effective with -g) [50.0]
  type: double
  inputBinding:
    prefix: -X
- id: l
  doc: Choose the longest subread and drop reads shorter than <int> (5000 recommended
    for PacBio) [0] Negative integer indicate tidying read names too, e.g. -5000.
  type: long
  inputBinding:
    prefix: -L
- id: k
  doc: Kmer fsize, 0 <= k <= 23, [0]
  type: long
  inputBinding:
    prefix: -k
- id: p
  doc: Kmer psize, 0 <= p <= 23, [21] k + p <= 25, seed is <k-mer>+<p-homopolymer-compressed>
  type: long
  inputBinding:
    prefix: -p
- id: k
  doc: Filter high frequency kmers, maybe repetitive, [1000.05] >= 1000 and indexing
    >= (1 - 0.05) * total_kmers_count
  type: double
  inputBinding:
    prefix: -K
- id: s
  doc: Subsampling kmers, 1/(<-S>) kmers are indexed, [4.00] -S is very useful in
    saving memeory and speeding up please note that subsampling kmers will have less
    matched length
  type: double
  inputBinding:
    prefix: -S
- id: l
  doc: Min length of alignment, [2048]
  type: double
  inputBinding:
    prefix: -l
- id: m
  doc: Min matched length by kmer matching, [200]
  type: double
  inputBinding:
    prefix: -m
- id: r
  doc: Enable realignment mode
  type: boolean
  inputBinding:
    prefix: -R
- id: a
  doc: Keep contained reads during alignment
  type: boolean
  inputBinding:
    prefix: -A
- id: s
  doc: Min similarity, calculated by kmer matched length / aligned length, [0.05]
  type: double
  inputBinding:
    prefix: -s
- id: e
  doc: Min read depth of a valid edge, [3]
  type: long
  inputBinding:
    prefix: -e
- id: q
  doc: Quiet
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: Verbose (can be multiple)
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
- wtdbg2
