class: CommandLineTool
id: SOAPdenovo_127mer_all.cwl
inputs:
- id: s
  doc: 'configFile: the config file of solexa reads'
  type: string
  inputBinding:
    prefix: -s
- id: o
  doc: 'outputGraph: prefix of output graph file name'
  type: string
  inputBinding:
    prefix: -o
- id: k
  doc: 'kmer(min 13, max 127): kmer size, [23]'
  type: long
  inputBinding:
    prefix: -K
- id: p
  doc: 'n_cpu: number of cpu for use, [8]'
  type: long
  inputBinding:
    prefix: -p
- id: a
  doc: 'initMemoryAssumption: memory assumption initialized to avoid further reallocation,
    unit G, [0]'
  type: long
  inputBinding:
    prefix: -a
- id: d
  doc: 'kmerFreqCutoff: kmers with frequency no larger than KmerFreqCutoff will be
    deleted, [0]'
  type: long
  inputBinding:
    prefix: -d
- id: r
  doc: (optional)  resolve repeats by reads, [NO]
  type: boolean
  inputBinding:
    prefix: -R
- id: d
  doc: 'edgeCovCutoff: edges with coverage no larger than EdgeCovCutoff will be deleted,
    [1]'
  type: long
  inputBinding:
    prefix: -D
- id: m
  doc: 'mergeLevel(min 0, max 3): the strength of merging similar sequences during
    contiging, [1]'
  type: long
  inputBinding:
    prefix: -M
- id: e
  doc: "arcWeight: two edges, between which the arc's weight is larger than arcWeight,\
    \ will be linerized, [0]"
  type: long
  inputBinding:
    prefix: -e
- id: m
  doc: 'maxKmer (max 127): maximum kmer size used for multi-kmer, [NO]'
  type: long
  inputBinding:
    prefix: -m
- id: e
  doc: (optional)  merge clean bubble before iterate, works only if -M is set when
    using multi-kmer, [NO]
  type: boolean
  inputBinding:
    prefix: -E
- id: k
  doc: 'kmer_R2C(min 13, max 127): kmer size used for mapping reads to contigs, [K]'
  type: long
  inputBinding:
    prefix: -k
- id: f
  doc: (optional)  fill gaps in scaffolds, [NO]
  type: boolean
  inputBinding:
    prefix: -F
- id: u
  doc: (optional)  un-mask contigs with high/low coverage before scaffolding, [mask]
  type: boolean
  inputBinding:
    prefix: -u
- id: w
  doc: (optional)  keep contigs weakly connected to other contigs in scaffold, [NO]
  type: boolean
  inputBinding:
    prefix: -w
- id: g
  doc: 'gapLenDiff: allowed length difference between estimated and filled gap, [50]'
  type: long
  inputBinding:
    prefix: -G
- id: l
  doc: 'minContigLen: shortest contig for scaffolding, [K+2]'
  type: long
  inputBinding:
    prefix: -L
- id: c
  doc: 'minContigCvg: minimum contig coverage (c*avgCvg), contigs shorter than 100bp
    with coverage smaller than c*avgCvg will be masked before scaffolding unless -u
    is set, [0.1]'
  type: double
  inputBinding:
    prefix: -c
- id: c
  doc: 'maxContigCvg: maximum contig coverage (C*avgCvg), contigs with coverage larger
    than C*avgCvg or contigs shorter than 100bp with coverage larger than 0.8*C*avgCvg
    will be masked before scaffolding unless -u is set, [2]'
  type: double
  inputBinding:
    prefix: -C
- id: b
  doc: 'insertSizeUpperBound: (b*avg_ins) will be used as upper bound of insert size
    for large insert size ( > 1000) when handling pair-end connections between contigs
    if b is set to larger than 1, [1.5]'
  type: double
  inputBinding:
    prefix: -b
- id: b
  doc: "bubbleCoverage: remove contig with lower cvoerage in bubble structure if both\
    \ contigs' coverage are smaller than bubbleCoverage*avgCvg, [0.6]"
  type: double
  inputBinding:
    prefix: -B
- id: n
  doc: 'genomeSize: genome size for statistics, [0]'
  type: long
  inputBinding:
    prefix: -N
- id: v
  doc: (optional)  output information for Hawkeye to visualize the assembly, [NO]
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-127mer
- all
