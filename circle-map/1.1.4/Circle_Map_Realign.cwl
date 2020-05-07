class: CommandLineTool
id: Circle_Map_Realign.cwl
inputs:
- id: i
  doc: 'Input: bam file containing the reads extracted by ReadExtractor'
  type: boolean
  inputBinding:
    prefix: -i
- id: qb_am
  doc: 'Input: query name sorted bam file'
  type: boolean
  inputBinding:
    prefix: -qbam
- id: sb_am
  doc: 'Input: coordinate sorted bam file'
  type: boolean
  inputBinding:
    prefix: -sbam
- id: fast_a
  doc: 'Input: Reference genome fasta file'
  type: boolean
  inputBinding:
    prefix: -fasta
- id: o
  doc: Output filename
  type: boolean
  inputBinding:
    prefix: -o
- id: n
  doc: ', --nhits          Number of realignment attempts. Default: 10'
  type: boolean
  inputBinding:
    prefix: -n
- id: p
  doc: ', --cut_off        Probability cut-off for considering a soft-clipped as realigned:
    Default: 0.99'
  type: boolean
  inputBinding:
    prefix: -p
- id: m
  doc: ', --min_sc         Minimum soft-clipped length to attempt the realignment.
    Default: 8'
  type: boolean
  inputBinding:
    prefix: -m
- id: g
  doc: ', --gap_open       Gap open penalty in the position specific scoring matrix.
    Default: 5'
  type: boolean
  inputBinding:
    prefix: -g
- id: e
  doc: ', --gap_ext        Gap extension penalty in the position specific scoring
    matrix. Default: 1'
  type: boolean
  inputBinding:
    prefix: -e
- id: q
  doc: ', --mapq           Minimum mapping quality allowed in the supplementary alignments.
    Default: 20'
  type: boolean
  inputBinding:
    prefix: -q
- id: d
  doc: ', --edit_distance-fraction  Maximum edit distance fraction allowed in the
    first realignment. Default (0.05)'
  type: boolean
  inputBinding:
    prefix: -d
- id: q
  doc: ', --split_quality  Minium split score to output an interval. Default (0.0)'
  type: boolean
  inputBinding:
    prefix: -Q
- id: remap_splits
  doc: Remap probabilistacally bwa-mem split reads
  type: boolean
  inputBinding:
    prefix: --remap_splits
- id: s
  doc: ', --split          Number of required split reads to output a eccDNA. Default:
    0'
  type: boolean
  inputBinding:
    prefix: -S
- id: o
  doc: ', --number_of_discordants  Number of required discordant reads for intervals
    with only discordants. Default: 3'
  type: boolean
  inputBinding:
    prefix: -O
- id: r
  doc: ', --ratio          Minimum in/out required coverage ratio. Default: 0.0'
  type: boolean
  inputBinding:
    prefix: -r
- id: iq
  doc: ', --insert_mapq   Mapq cutoff for stimating the insert size distribution.
    Default 60'
  type: boolean
  inputBinding:
    prefix: -iq
- id: sd
  doc: ', --std           Standard deviations of the insert size to extend the intervals.
    Default 5'
  type: boolean
  inputBinding:
    prefix: -sd
- id: s
  doc: ', --sample_size    Number of concordant reads (R2F1) to use for estimating
    the insert size distribution. Default 100000'
  type: boolean
  inputBinding:
    prefix: -s
- id: f
  doc: ', --merge_fraction  Merge intervals reciprocally overlapping by a fraction.
    Default 0.99'
  type: boolean
  inputBinding:
    prefix: -f
- id: p
  doc: ', --interval_probability  Skip edges of the graph with a probability below
    the threshold. Default: 0.01'
  type: boolean
  inputBinding:
    prefix: -P
- id: k
  doc: ', --clustering_dist  Cluster reads that are K nucleotides appart in the same
    node. Default: 500'
  type: boolean
  inputBinding:
    prefix: -K
- id: only_discordant_s
  doc: Use only discordant reads to build the graph
  type: boolean
  inputBinding:
    prefix: --only_discordants
- id: f
  doc: ', --allele_frequency  Minimum allele frequency required to report the circle
    interval. Default (0.1)'
  type: boolean
  inputBinding:
    prefix: -F
- id: no_coverage
  doc: Don't compute coverage statistics
  type: boolean
  inputBinding:
    prefix: --no_coverage
- id: b
  doc: ', --bases          Number of bases to extend for computing the coverage ratio.
    Default: 200'
  type: boolean
  inputBinding:
    prefix: -b
- id: cq
  doc: ', --cmapq         Minimum mapping quality treshold for coverage computation.
    Default: 0'
  type: boolean
  inputBinding:
    prefix: -cq
- id: e
  doc: ', --extension      Number of bases inside the eccDNA breakpoint coordinates
    to compute the ratio. Default: 100'
  type: boolean
  inputBinding:
    prefix: -E
- id: t
  doc: ', --threads        Number of threads to use.Default 1'
  type: boolean
  inputBinding:
    prefix: -t
- id: dir
  doc: ', --directory    Working directory, default is the working directory'
  type: boolean
  inputBinding:
    prefix: -dir
- id: v
  doc: ', --verbose        Verbose level, 1=error,2=warning, 3=message'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- Circle-Map
- Realign
