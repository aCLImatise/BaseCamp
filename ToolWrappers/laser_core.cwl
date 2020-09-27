class: CommandLineTool
id: laser_core.cwl
inputs:
- id: in_very_verbose_caution
  doc: "[ --verbose ]                      Be (very) verbose. CAUTION: produces a\n\
    lot of output to stderr."
  type: boolean
  inputBinding:
    prefix: -v
- id: in_single_end
  doc: "Process single end reads (instead of\npaired end)."
  type: boolean
  inputBinding:
    prefix: --single-end
- id: in_skip_alignmentsexist_turn
  doc: "[ --skip_non_xa ]                  Skip reads for which other alignments\n\
    exist (i.e. X0+X1>1), but no XA tag is\npresent. Turn on when using BWA."
  type: boolean
  inputBinding:
    prefix: -X
- id: in_max_input_aln
  doc: "(=-1)             Maximum number of input anchor\nalignments. If more are\
    \ given, skip\nthis anchor (but not the whole read)."
  type: long
  inputBinding:
    prefix: --max_input_aln
- id: in_abort_when_set
  doc: "[ --ignore_wrong_X_tags ]          Do not abort when wrongly set X0/X1\ntags\
    \ are encountered."
  type: boolean
  inputBinding:
    prefix: -I
- id: in_arg_value_subtract
  doc: "[ --phred_offset ] arg (=33)       Value to subtract from ASCII code to\n\
    get the PHRED quality."
  type: boolean
  inputBinding:
    prefix: -p
- id: in_arg_maximum_number
  doc: "[ --max_mapping ] arg (=10)        Maximum number of mappings for each\nread\
    \ in a pair. If more mappings are\nfound, the read is skipped."
  type: boolean
  inputBinding:
    prefix: -m
- id: in_arg_maximum_sum
  doc: "[ --cost_threshold ] arg (=115)    Maximum PHRED sum allowed for (split)\n\
    read alignments."
  type: boolean
  inputBinding:
    prefix: -c
- id: in_arg_phred_an
  doc: '[ --indel_cost ] arg (=30)         PHRED like cost of an indel.'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_affine_gap_costs
  doc: "Use affine gapcosts (instead of linear\ngapcosts). If enabled, gap open costs\n\
    are given by --indel_cost and gap\nextend costs are given by\n--gap_extend_cost,\
    \ i.e. a gap of length\nk costs indel_cost+k*gap_extend_cost."
  type: boolean
  inputBinding:
    prefix: --affine_gapcosts
- id: in_gap_extend_cost
  doc: "(=10)           Gap extend cost. Only effective in\nconnection with --affine_gapcosts."
  type: long
  inputBinding:
    prefix: --gap_extend_cost
- id: in_arg_phred_splitting
  doc: '[ --split_cost ] arg (=25)         PHRED like cost of splitting an'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_inversion_split_cost
  doc: (=45)      PHRED like cost of an inversion split.
  type: long
  inputBinding:
    prefix: --inversion_split_cost
- id: in_arg_reportevaluate_split
  doc: "[ --secondary_aln_phred_diff ] arg (=29)\nReport/evaluate split alignments\
    \ with a\ndifference of at most this value to the\nbest split alignment."
  type: boolean
  inputBinding:
    prefix: -d
- id: in_arg_minimal_number
  doc: "[ --min_anchor_length ] arg (=8)   Minimal number of nucleotides on each\n\
    sides of a split."
  type: boolean
  inputBinding:
    prefix: -a
- id: in_arg_maximal_allowed_onreference
  doc: "[ --max_span ] arg (=1000)         Maximal allowed span (i.e. length on\n\
    reference) of a split read alignment."
  type: boolean
  inputBinding:
    prefix: -n
- id: in_max_anchors
  doc: (=100)              Maximal allowed anchors per read
  type: long
  inputBinding:
    prefix: --max_anchors
- id: in_arg_maximal_allowed_pairing
  doc: "[ --max_insert ] arg (=50000)      Maximal allowed internal segment size\n\
    when pairing alignments for a read\npair."
  type: boolean
  inputBinding:
    prefix: -N
- id: in_also_output_alignments
  doc: '[ --output_secondary ]             Also output secondary alignments.'
  type: boolean
  inputBinding:
    prefix: -S
- id: in_arg_length_anchor
  doc: "[ --anchor_search_length ] arg (=20)\nLength of anchor used for searching."
  type: boolean
  inputBinding:
    prefix: -A
- id: in_arg_allowed_errors
  doc: '[ --anchor_errors ] arg (=2)       Allowed errors when searching for'
  type: boolean
  inputBinding:
    prefix: -e
- id: in_arg_anchor_iterations
  doc: '[ --anchor_search_iter ] arg (=3)  Anchor search iterations.'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_arg_filename_write
  doc: "[ --putative_variations ] arg      Filename to write a list of all\nvariation\
    \ candidates to. All candidates\nare written, no matter how weak the\nevidence\
    \ for them to be true."
  type: boolean
  inputBinding:
    prefix: -P
- id: in_arg_file_known
  doc: "[ --input_length_dist_in ] arg     File with known internal segment length\n\
    histogram to be used to score\nalignments."
  type: boolean
  inputBinding:
    prefix: -l
- id: in_arg_file_internal
  doc: "[ --input_length_dist_out ] arg    File to write internal segment length\n\
    histogram for uniquely mappable reads\nto."
  type: boolean
  inputBinding:
    prefix: -L
- id: in_arg_file_insertion
  doc: "[ --insertion_length_dist ] arg    File to write insertion length\nhistogram\
    \ for uniquely mappable reads\nto."
  type: boolean
  inputBinding:
    prefix: -R
- id: in_arg_file_write
  doc: "[ --deletion_length_dist ] arg     File to write deletion length histogram\n\
    for uniquely mappable reads to."
  type: boolean
  inputBinding:
    prefix: -D
- id: in_arg_number_threads
  doc: "[ --threads ] arg (=0)             Number of threads (default: 0 =\nstrictly\
    \ single-threaded)."
  type: boolean
  inputBinding:
    prefix: -T
- id: in_use_m_matches
  doc: "[ --m_in_cigar ]                   Use M for matches and mismatches in\nCIGAR\
    \ strings (instead of '=' and 'X')."
  type: boolean
  inputBinding:
    prefix: -M
- id: in_snp
  doc: "Filename to store putative SNP\npositions to."
  type: File
  inputBinding:
    prefix: --snp
- id: in_arg_weight_cutoff
  doc: "[ --snp_weight_cutoff ] arg (=3)   Weight cutoff for SNPs to be written to\n\
    filename given as parameter --snp."
  type: boolean
  inputBinding:
    prefix: -w
- id: in_in_del_weight_cut_off
  doc: "(=3)        Weight cutoff for indels to be written\nto filename given as parameter\
    \ -P."
  type: File
  inputBinding:
    prefix: --indel_weight_cutoff
- id: in_rightmost
  doc: "Report rightmost deletions/insertions\n(default: leftmost)."
  type: boolean
  inputBinding:
    prefix: --rightmost
- id: in_soft_clip
  doc: Allow reads to be soft-clipped.
  type: boolean
  inputBinding:
    prefix: --soft_clip
- id: in_soft_clip_open_cost
  doc: (=35)       Cost for soft clipping a read.
  type: long
  inputBinding:
    prefix: --soft_clip_open_cost
- id: in_soft_clip_extend_cost
  doc: "(=3)      Cost for \"extending\" a soft clip; i.e.,\nsoftclipping k characters\
    \ from a read\nwill cost soft_clip_open_cost+k*soft_cl\nip_extend_cost."
  type: long
  inputBinding:
    prefix: --soft_clip_extend_cost
- id: in_read_group
  doc: Read group for all reads.
  type: string
  inputBinding:
    prefix: --read_group
- id: in_read_group_library
  doc: Library information for read group
  type: string
  inputBinding:
    prefix: --read_group_library
- id: in_alignment_dot
  doc: '--interchromosomal                    Search for interchromosomal split '
  type: string
  inputBinding:
    position: 0
- id: in_reads_dot
  doc: --interchrom_split_cost arg (=60)     PHRED like cost of an inter-chromosomal
  type: string
  inputBinding:
    position: 1
- id: in_split_dot
  doc: --inversions                          Search for inversion split reads.
  type: string
  inputBinding:
    position: 2
- id: in_suffix_slash_prefix_dot
  doc: '--max_anchor_pairs arg (=500)         Maximal allowed number of anchor '
  type: string
  inputBinding:
    position: 3
- id: in_pairings_dot
  doc: --anchor_length_increment arg (=4)    Number of characters to increase anchor
  type: string
  inputBinding:
    position: 4
- id: in_found_dot
  doc: '--max_anchor_length arg (=30)         Maximal anchor length (if reached it '
  type: string
  inputBinding:
    position: 0
- id: in_anchors_dot
  doc: -o [ --anchor_distance ] arg (=600)   Regions size for searching for anchors.
  type: string
  inputBinding:
    position: 0
- id: in_header_dot
  doc: '--read_group_sample arg               Sample information for read group '
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- laser-core
