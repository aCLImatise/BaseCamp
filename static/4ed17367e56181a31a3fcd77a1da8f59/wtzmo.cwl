class: CommandLineTool
id: wtzmo.cwl
inputs:
- id: f
  doc: Force overwrite
  type: boolean
  inputBinding:
    prefix: -f
- id: h
  doc: 'Option of homopolymer compression, [3] 1: trun on compression on kmer 2: trun
    on compression on small-kmer(zmer)'
  type: long
  inputBinding:
    prefix: -H
- id: k
  doc: Kmer size, 5 <= <-k> <= 32, [16]
  type: long
  inputBinding:
    prefix: -k
- id: k
  doc: 'Filter high frequency kmers, maybe repetitive, [0] 0: set K to 5 * <average_kmer_depth>,
    but no less than 100'
  type: long
  inputBinding:
    prefix: -K
- id: d
  doc: Minimum size of total seeding region for kmer windows, [300]
  type: long
  inputBinding:
    prefix: -d
- id: s
  doc: Subsampling kmers, 1/<-S> kmers are indexed, [4]
  type: long
  inputBinding:
    prefix: -S
- id: g
  doc: 'Build kmer index in multiple iterations to save memory, 1: once, [1] Given
    10M reads having 100G bases, about 100/(4)=25G used in seq storage, about 100*(6)G=600G
    used in kmer-index. If -G = 10, kmer-index is divided into 10 pieces, thus taking
    60G. But we need additional 10M / <tot_jobs: -P> * 8 * <num_of_cand: -A> memory
    to store candidates to be aligned.'
  type: long
  inputBinding:
    prefix: -G
- id: z
  doc: Smaller kmer size (z-mer), 5 <= <-z> <= 16, [10]
  type: long
  inputBinding:
    prefix: -z
- id: z
  doc: Filter high frequency z-mers, maybe repetitive, [64]
  type: long
  inputBinding:
    prefix: -Z
- id: u
  doc: 'Ultra-fast dot matrix alignment, pattern search in zmer image Usage: wtzmo
    <other_options> -s 200 -m 0.1 -U 128 -U 64 -U 160 -U 1.0 -U 0.05 (1)    (2)   (3)    (4)    (5)
    Intra-block (1): max_gap, (2): max_deviation, (3): min_size Inter-block (4): deviation
    penalty, (5): gap size penalty use -U -1 instead of type six default parameters
    Will trun off -y -R -r -l -q -B -C -M -X -O -W -T -w -W -e -n -y <int>    Zmer
    window, [800]'
  type: double
  inputBinding:
    prefix: -U
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
- id: q
  doc: THreshold of seed-window coverage along query, will be used to decrease weight
    of repetitive region, [100]
  type: long
  inputBinding:
    prefix: -q
- id: a
  doc: Limit number of best candidates per read, [500]
  type: long
  inputBinding:
    prefix: -A
- id: b
  doc: Limit number of best overlaps per read, [100] So call 'best' is estimated by
    seed-windows, and increase as rd_len / avg_rd_len
  type: long
  inputBinding:
    prefix: -B
- id: c
  doc: Don't skip calculation of its overlaps even when the read was contained by
    others
  type: boolean
  inputBinding:
    prefix: -C
- id: f
  doc: Reads from this file(s) are to be exclued, one line for one read name, + [NULL]
  type: string
  inputBinding:
    prefix: -F
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
- id: e
  doc: Maximum bandwidth at ending extension, [800]
  type: long
  inputBinding:
    prefix: -e
- id: s
  doc: Minimum alignment score, [200]
  type: long
  inputBinding:
    prefix: -s
- id: m
  doc: Minimum alignment identity, [0.5]
  type: double
  inputBinding:
    prefix: -m
- id: n
  doc: Refine the alignment
  type: boolean
  inputBinding:
    prefix: -n
- id: v
  doc: Verbose, BE careful, HUGEEEEEEEE output on STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- wtzmo
