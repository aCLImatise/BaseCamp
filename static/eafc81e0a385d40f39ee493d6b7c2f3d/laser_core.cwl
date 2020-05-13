class: CommandLineTool
id: laser_core.cwl
inputs:
- id: v
  doc: '[ --verbose ]                      Be (very) verbose. CAUTION: produces a  lot
    of output to stderr.'
  type: boolean
  inputBinding:
    prefix: -v
- id: single_end
  doc: Process single end reads (instead of  paired end).
  type: boolean
  inputBinding:
    prefix: --single-end
- id: x
  doc: '[ --skip_non_xa ]                  Skip reads for which other alignments  exist
    (i.e. X0+X1>1), but no XA tag is  present. Turn on when using BWA.'
  type: boolean
  inputBinding:
    prefix: -X
- id: max_input_aln
  doc: (=-1)             Maximum number of input anchor  alignments. If more are given,
    skip  this anchor (but not the whole read).
  type: string
  inputBinding:
    prefix: --max_input_aln
- id: i
  doc: '[ --ignore_wrong_X_tags ]          Do not abort when wrongly set X0/X1  tags
    are encountered.'
  type: boolean
  inputBinding:
    prefix: -I
- id: p
  doc: '[ --phred_offset ] arg (=33)       Value to subtract from ASCII code to  get
    the PHRED quality.'
  type: boolean
  inputBinding:
    prefix: -p
- id: m
  doc: '[ --max_mapping ] arg (=10)        Maximum number of mappings for each  read
    in a pair. If more mappings are  found, the read is skipped.'
  type: boolean
  inputBinding:
    prefix: -m
- id: c
  doc: '[ --cost_threshold ] arg (=115)    Maximum PHRED sum allowed for (split)  read
    alignments.'
  type: boolean
  inputBinding:
    prefix: -c
- id: i
  doc: '[ --indel_cost ] arg (=30)         PHRED like cost of an indel.'
  type: boolean
  inputBinding:
    prefix: -i
- id: affine_gap_costs
  doc: Use affine gapcosts (instead of linear  gapcosts). If enabled, gap open costs  are
    given by --indel_cost and gap  extend costs are given by  --gap_extend_cost, i.e.
    a gap of length k costs indel_cost+k*gap_extend_cost.
  type: boolean
  inputBinding:
    prefix: --affine_gapcosts
- id: gap_extend_cost
  doc: (=10)           Gap extend cost. Only effective in  connection with --affine_gapcosts.
  type: string
  inputBinding:
    prefix: --gap_extend_cost
- id: s
  doc: '[ --split_cost ] arg (=25)         PHRED like cost of splitting an  alignment.'
  type: boolean
  inputBinding:
    prefix: -s
- id: inter_chromosomal
  doc: Search for interchromosomal split  reads.
  type: boolean
  inputBinding:
    prefix: --interchromosomal
- id: inter_chrom_split_cost
  doc: (=60)     PHRED like cost of an inter-chromosomal split.
  type: string
  inputBinding:
    prefix: --interchrom_split_cost
- id: inversions
  doc: Search for inversion split reads.
  type: boolean
  inputBinding:
    prefix: --inversions
- id: inversion_split_cost
  doc: (=45)      PHRED like cost of an inversion split.
  type: string
  inputBinding:
    prefix: --inversion_split_cost
- id: d
  doc: '[ --secondary_aln_phred_diff ] arg (=29) Report/evaluate split alignments
    with a difference of at most this value to the best split alignment.'
  type: boolean
  inputBinding:
    prefix: -d
- id: a
  doc: '[ --min_anchor_length ] arg (=8)   Minimal number of nucleotides on each  sides
    of a split.'
  type: boolean
  inputBinding:
    prefix: -a
- id: n
  doc: '[ --max_span ] arg (=1000)         Maximal allowed span (i.e. length on  reference)
    of a split read alignment.'
  type: boolean
  inputBinding:
    prefix: -n
- id: max_anchors
  doc: (=100)              Maximal allowed anchors per read  suffix/prefix.
  type: string
  inputBinding:
    prefix: --max_anchors
- id: max_anchor_pairs
  doc: (=500)         Maximal allowed number of anchor  pairings.
  type: string
  inputBinding:
    prefix: --max_anchor_pairs
- id: anchor_length_increment
  doc: (=4)    Number of characters to increase anchor length by if too many anchors
    are  found.
  type: string
  inputBinding:
    prefix: --anchor_length_increment
- id: max_anchor_length
  doc: (=30)         Maximal anchor length (if reached it  will not be increased any
    further.
  type: string
  inputBinding:
    prefix: --max_anchor_length
- id: n
  doc: '[ --max_insert ] arg (=50000)      Maximal allowed internal segment size  when
    pairing alignments for a read  pair.'
  type: boolean
  inputBinding:
    prefix: -N
- id: s
  doc: '[ --output_secondary ]             Also output secondary alignments.'
  type: boolean
  inputBinding:
    prefix: -S
- id: a
  doc: '[ --anchor_search_length ] arg (=20) Length of anchor used for searching.'
  type: boolean
  inputBinding:
    prefix: -A
- id: e
  doc: '[ --anchor_errors ] arg (=2)       Allowed errors when searching for  anchors.'
  type: boolean
  inputBinding:
    prefix: -e
- id: o
  doc: '[ --anchor_distance ] arg (=600)   Regions size for searching for anchors.'
  type: boolean
  inputBinding:
    prefix: -o
- id: t
  doc: '[ --anchor_search_iter ] arg (=3)  Anchor search iterations.'
  type: boolean
  inputBinding:
    prefix: -t
- id: p
  doc: '[ --putative_variations ] arg      Filename to write a list of all  variation
    candidates to. All candidates are written, no matter how weak the  evidence for
    them to be true.'
  type: boolean
  inputBinding:
    prefix: -P
- id: l
  doc: '[ --input_length_dist_in ] arg     File with known internal segment length
    histogram to be used to score  alignments.'
  type: boolean
  inputBinding:
    prefix: -l
- id: l
  doc: '[ --input_length_dist_out ] arg    File to write internal segment length  histogram
    for uniquely mappable reads  to.'
  type: boolean
  inputBinding:
    prefix: -L
- id: r
  doc: '[ --insertion_length_dist ] arg    File to write insertion length  histogram
    for uniquely mappable reads  to.'
  type: boolean
  inputBinding:
    prefix: -R
- id: d
  doc: '[ --deletion_length_dist ] arg     File to write deletion length histogram
    for uniquely mappable reads to.'
  type: boolean
  inputBinding:
    prefix: -D
- id: t
  doc: '[ --threads ] arg (=0)             Number of threads (default: 0 =  strictly
    single-threaded).'
  type: boolean
  inputBinding:
    prefix: -T
- id: m
  doc: "[ --m_in_cigar ]                   Use M for matches and mismatches in  CIGAR\
    \ strings (instead of '=' and 'X')."
  type: boolean
  inputBinding:
    prefix: -M
- id: snp
  doc: Filename to store putative SNP  positions to.
  type: string
  inputBinding:
    prefix: --snp
- id: w
  doc: '[ --snp_weight_cutoff ] arg (=3)   Weight cutoff for SNPs to be written to
    filename given as parameter --snp.'
  type: boolean
  inputBinding:
    prefix: -w
- id: in_del_weight_cut_off
  doc: (=3)        Weight cutoff for indels to be written  to filename given as parameter
    -P.
  type: string
  inputBinding:
    prefix: --indel_weight_cutoff
- id: rightmost
  doc: 'Report rightmost deletions/insertions  (default: leftmost).'
  type: boolean
  inputBinding:
    prefix: --rightmost
- id: soft_clip
  doc: Allow reads to be soft-clipped.
  type: boolean
  inputBinding:
    prefix: --soft_clip
- id: soft_clip_open_cost
  doc: (=35)       Cost for soft clipping a read.
  type: string
  inputBinding:
    prefix: --soft_clip_open_cost
- id: soft_clip_extend_cost
  doc: (=3)      Cost for "extending" a soft clip; i.e., softclipping k characters
    from a read  will cost soft_clip_open_cost+k*soft_cl ip_extend_cost.
  type: string
  inputBinding:
    prefix: --soft_clip_extend_cost
- id: read_group
  doc: Read group for all reads.
  type: string
  inputBinding:
    prefix: --read_group
- id: read_group_library
  doc: Library information for read group  header.
  type: string
  inputBinding:
    prefix: --read_group_library
- id: read_group_sample
  doc: Sample information for read group  header.
  type: string
  inputBinding:
    prefix: --read_group_sample
outputs: []
cwlVersion: v1.1
baseCommand:
- laser-core
