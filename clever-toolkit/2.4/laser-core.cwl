#!/usr/bin/env cwl-runner

baseCommand:
- laser-core
class: CommandLineTool
cwlVersion: v1.0
id: laser-core
inputs:
- doc: '[ --verbose ]                      Be (very) verbose. CAUTION: produces a  lot
    of output to stderr.'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: Process single end reads (instead of  paired end).
  id: single_end
  inputBinding:
    prefix: --single-end
  type: boolean
- doc: '[ --skip_non_xa ]                  Skip reads for which other alignments  exist
    (i.e. X0+X1>1), but no XA tag is  present. Turn on when using BWA.'
  id: x
  inputBinding:
    prefix: -X
  type: boolean
- doc: (=-1)             Maximum number of input anchor  alignments. If more are given,
    skip  this anchor (but not the whole read).
  id: max_input_aln
  inputBinding:
    prefix: --max_input_aln
  type: string
- doc: '[ --ignore_wrong_X_tags ]          Do not abort when wrongly set X0/X1  tags
    are encountered.'
  id: i
  inputBinding:
    prefix: -I
  type: boolean
- doc: '[ --phred_offset ] arg (=33)       Value to subtract from ASCII code to  get
    the PHRED quality.'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[ --max_mapping ] arg (=10)        Maximum number of mappings for each  read
    in a pair. If more mappings are  found, the read is skipped.'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '[ --cost_threshold ] arg (=115)    Maximum PHRED sum allowed for (split)  read
    alignments.'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: '[ --indel_cost ] arg (=30)         PHRED like cost of an indel.'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: Use affine gapcosts (instead of linear  gapcosts). If enabled, gap open costs  are
    given by --indel_cost and gap  extend costs are given by  --gap_extend_cost, i.e.
    a gap of length k costs indel_cost+k*gap_extend_cost.
  id: affine_gap_costs
  inputBinding:
    prefix: --affine_gapcosts
  type: boolean
- doc: (=10)           Gap extend cost. Only effective in  connection with --affine_gapcosts.
  id: gap_extend_cost
  inputBinding:
    prefix: --gap_extend_cost
  type: string
- doc: '[ --split_cost ] arg (=25)         PHRED like cost of splitting an  alignment.'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: Search for interchromosomal split  reads.
  id: inter_chromosomal
  inputBinding:
    prefix: --interchromosomal
  type: boolean
- doc: (=60)     PHRED like cost of an inter-chromosomal split.
  id: inter_chrom_split_cost
  inputBinding:
    prefix: --interchrom_split_cost
  type: string
- doc: Search for inversion split reads.
  id: inversions
  inputBinding:
    prefix: --inversions
  type: boolean
- doc: (=45)      PHRED like cost of an inversion split.
  id: inversion_split_cost
  inputBinding:
    prefix: --inversion_split_cost
  type: string
- doc: '[ --secondary_aln_phred_diff ] arg (=29) Report/evaluate split alignments
    with a difference of at most this value to the best split alignment.'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: '[ --min_anchor_length ] arg (=8)   Minimal number of nucleotides on each  sides
    of a split.'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: '[ --max_span ] arg (=1000)         Maximal allowed span (i.e. length on  reference)
    of a split read alignment.'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: (=100)              Maximal allowed anchors per read  suffix/prefix.
  id: max_anchors
  inputBinding:
    prefix: --max_anchors
  type: string
- doc: (=500)         Maximal allowed number of anchor  pairings.
  id: max_anchor_pairs
  inputBinding:
    prefix: --max_anchor_pairs
  type: string
- doc: (=4)    Number of characters to increase anchor length by if too many anchors
    are  found.
  id: anchor_length_increment
  inputBinding:
    prefix: --anchor_length_increment
  type: string
- doc: (=30)         Maximal anchor length (if reached it  will not be increased any
    further.
  id: max_anchor_length
  inputBinding:
    prefix: --max_anchor_length
  type: string
- doc: '[ --max_insert ] arg (=50000)      Maximal allowed internal segment size  when
    pairing alignments for a read  pair.'
  id: n
  inputBinding:
    prefix: -N
  type: boolean
- doc: '[ --output_secondary ]             Also output secondary alignments.'
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: '[ --anchor_search_length ] arg (=20) Length of anchor used for searching.'
  id: a
  inputBinding:
    prefix: -A
  type: boolean
- doc: '[ --anchor_errors ] arg (=2)       Allowed errors when searching for  anchors.'
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: '[ --anchor_distance ] arg (=600)   Regions size for searching for anchors.'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --anchor_search_iter ] arg (=3)  Anchor search iterations.'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: '[ --putative_variations ] arg      Filename to write a list of all  variation
    candidates to. All candidates are written, no matter how weak the  evidence for
    them to be true.'
  id: p
  inputBinding:
    prefix: -P
  type: boolean
- doc: '[ --input_length_dist_in ] arg     File with known internal segment length
    histogram to be used to score  alignments.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '[ --input_length_dist_out ] arg    File to write internal segment length  histogram
    for uniquely mappable reads  to.'
  id: l
  inputBinding:
    prefix: -L
  type: boolean
- doc: '[ --insertion_length_dist ] arg    File to write insertion length  histogram
    for uniquely mappable reads  to.'
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: '[ --deletion_length_dist ] arg     File to write deletion length histogram
    for uniquely mappable reads to.'
  id: d
  inputBinding:
    prefix: -D
  type: boolean
- doc: '[ --threads ] arg (=0)             Number of threads (default: 0 =  strictly
    single-threaded).'
  id: t
  inputBinding:
    prefix: -T
  type: boolean
- doc: "[ --m_in_cigar ]                   Use M for matches and mismatches in  CIGAR\
    \ strings (instead of '=' and 'X')."
  id: m
  inputBinding:
    prefix: -M
  type: boolean
- doc: Filename to store putative SNP  positions to.
  id: snp
  inputBinding:
    prefix: --snp
  type: string
- doc: '[ --snp_weight_cutoff ] arg (=3)   Weight cutoff for SNPs to be written to
    filename given as parameter --snp.'
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: (=3)        Weight cutoff for indels to be written  to filename given as parameter
    -P.
  id: in_del_weight_cut_off
  inputBinding:
    prefix: --indel_weight_cutoff
  type: string
- doc: 'Report rightmost deletions/insertions  (default: leftmost).'
  id: rightmost
  inputBinding:
    prefix: --rightmost
  type: boolean
- doc: Allow reads to be soft-clipped.
  id: soft_clip
  inputBinding:
    prefix: --soft_clip
  type: boolean
- doc: (=35)       Cost for soft clipping a read.
  id: soft_clip_open_cost
  inputBinding:
    prefix: --soft_clip_open_cost
  type: string
- doc: (=3)      Cost for "extending" a soft clip; i.e., softclipping k characters
    from a read  will cost soft_clip_open_cost+k*soft_cl ip_extend_cost.
  id: soft_clip_extend_cost
  inputBinding:
    prefix: --soft_clip_extend_cost
  type: string
- doc: Read group for all reads.
  id: read_group
  inputBinding:
    prefix: --read_group
  type: string
- doc: Library information for read group  header.
  id: read_group_library
  inputBinding:
    prefix: --read_group_library
  type: string
- doc: Sample information for read group  header.
  id: read_group_sample
  inputBinding:
    prefix: --read_group_sample
  type: string
