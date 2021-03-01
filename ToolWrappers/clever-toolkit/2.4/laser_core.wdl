version 1.0

task Lasercore {
  input {
    Boolean? be_caution_produces
    Boolean? single_end
    Boolean? skip_reads_ispresent
    Int? max_input_aln
    Boolean? abort_when_set
    Boolean? arg_value_subtract
    Boolean? arg_maximum_number
    Boolean? arg_maximum_sum
    Boolean? arg_phred_an
    Boolean? affine_gap_costs
    Int? gap_extend_cost
    Boolean? arg_phred_splitting
    Int? inversion_split_cost
    Boolean? arg_reportevaluate_split
    Boolean? arg_minimal_number
    Boolean? arg_maximal_allowed_length
    Int? max_anchors
    Int? max_anchor_pairs
    Boolean? arg_maximal_allowed_sizewhen
    Boolean? also_output_alignments
    Boolean? arg_length_anchor
    Boolean? arg_allowed_errors
    Boolean? arg_anchor_search
    Boolean? arg_filename_write
    Boolean? arg_file_used
    Boolean? arg_file_internal
    Boolean? arg_file_insertion
    Boolean? arg_file_write
    Boolean? arg_number_threads
    Boolean? use_m_mismatches
    File? snp
    Boolean? arg_weight_cutoff
    File? in_del_weight_cut_off
    Boolean? rightmost
    Boolean? soft_clip
    Int? soft_clip_open_cost
    Int? soft_clip_extend_cost
    String? read_group
    String? read_group_library
    String alignment_dot
    String reads_dot
    String split_dot
    String pairings_dot
    String found_dot
    String anchors_dot
    String header_dot
  }
  command <<<
    laser_core \
      ~{alignment_dot} \
      ~{reads_dot} \
      ~{split_dot} \
      ~{pairings_dot} \
      ~{found_dot} \
      ~{anchors_dot} \
      ~{header_dot} \
      ~{if (be_caution_produces) then "-v" else ""} \
      ~{if (single_end) then "--single-end" else ""} \
      ~{if (skip_reads_ispresent) then "-X" else ""} \
      ~{if defined(max_input_aln) then ("--max_input_aln " +  '"' + max_input_aln + '"') else ""} \
      ~{if (abort_when_set) then "-I" else ""} \
      ~{if (arg_value_subtract) then "-p" else ""} \
      ~{if (arg_maximum_number) then "-m" else ""} \
      ~{if (arg_maximum_sum) then "-c" else ""} \
      ~{if (arg_phred_an) then "-i" else ""} \
      ~{if (affine_gap_costs) then "--affine_gapcosts" else ""} \
      ~{if defined(gap_extend_cost) then ("--gap_extend_cost " +  '"' + gap_extend_cost + '"') else ""} \
      ~{if (arg_phred_splitting) then "-s" else ""} \
      ~{if defined(inversion_split_cost) then ("--inversion_split_cost " +  '"' + inversion_split_cost + '"') else ""} \
      ~{if (arg_reportevaluate_split) then "-d" else ""} \
      ~{if (arg_minimal_number) then "-a" else ""} \
      ~{if (arg_maximal_allowed_length) then "-n" else ""} \
      ~{if defined(max_anchors) then ("--max_anchors " +  '"' + max_anchors + '"') else ""} \
      ~{if defined(max_anchor_pairs) then ("--max_anchor_pairs " +  '"' + max_anchor_pairs + '"') else ""} \
      ~{if (arg_maximal_allowed_sizewhen) then "-N" else ""} \
      ~{if (also_output_alignments) then "-S" else ""} \
      ~{if (arg_length_anchor) then "-A" else ""} \
      ~{if (arg_allowed_errors) then "-e" else ""} \
      ~{if (arg_anchor_search) then "-t" else ""} \
      ~{if (arg_filename_write) then "-P" else ""} \
      ~{if (arg_file_used) then "-l" else ""} \
      ~{if (arg_file_internal) then "-L" else ""} \
      ~{if (arg_file_insertion) then "-R" else ""} \
      ~{if (arg_file_write) then "-D" else ""} \
      ~{if (arg_number_threads) then "-T" else ""} \
      ~{if (use_m_mismatches) then "-M" else ""} \
      ~{if defined(snp) then ("--snp " +  '"' + snp + '"') else ""} \
      ~{if (arg_weight_cutoff) then "-w" else ""} \
      ~{if defined(in_del_weight_cut_off) then ("--indel_weight_cutoff " +  '"' + in_del_weight_cut_off + '"') else ""} \
      ~{if (rightmost) then "--rightmost" else ""} \
      ~{if (soft_clip) then "--soft_clip" else ""} \
      ~{if defined(soft_clip_open_cost) then ("--soft_clip_open_cost " +  '"' + soft_clip_open_cost + '"') else ""} \
      ~{if defined(soft_clip_extend_cost) then ("--soft_clip_extend_cost " +  '"' + soft_clip_extend_cost + '"') else ""} \
      ~{if defined(read_group) then ("--read_group " +  '"' + read_group + '"') else ""} \
      ~{if defined(read_group_library) then ("--read_group_library " +  '"' + read_group_library + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    be_caution_produces: "[ --verbose ]                      Be (very) verbose. CAUTION: produces a\\nlot of output to stderr."
    single_end: "Process single end reads (instead of\\npaired end)."
    skip_reads_ispresent: "[ --skip_non_xa ]                  Skip reads for which other alignments\\nexist (i.e. X0+X1>1), but no XA tag is\\npresent. Turn on when using BWA."
    max_input_aln: "(=-1)             Maximum number of input anchor\\nalignments. If more are given, skip\\nthis anchor (but not the whole read)."
    abort_when_set: "[ --ignore_wrong_X_tags ]          Do not abort when wrongly set X0/X1\\ntags are encountered."
    arg_value_subtract: "[ --phred_offset ] arg (=33)       Value to subtract from ASCII code to\\nget the PHRED quality."
    arg_maximum_number: "[ --max_mapping ] arg (=10)        Maximum number of mappings for each\\nread in a pair. If more mappings are\\nfound, the read is skipped."
    arg_maximum_sum: "[ --cost_threshold ] arg (=115)    Maximum PHRED sum allowed for (split)\\nread alignments."
    arg_phred_an: "[ --indel_cost ] arg (=30)         PHRED like cost of an indel."
    affine_gap_costs: "Use affine gapcosts (instead of linear\\ngapcosts). If enabled, gap open costs\\nare given by --indel_cost and gap\\nextend costs are given by\\n--gap_extend_cost, i.e. a gap of length\\nk costs indel_cost+k*gap_extend_cost."
    gap_extend_cost: "(=10)           Gap extend cost. Only effective in\\nconnection with --affine_gapcosts."
    arg_phred_splitting: "[ --split_cost ] arg (=25)         PHRED like cost of splitting an"
    inversion_split_cost: "(=45)      PHRED like cost of an inversion split."
    arg_reportevaluate_split: "[ --secondary_aln_phred_diff ] arg (=29)\\nReport/evaluate split alignments with a\\ndifference of at most this value to the\\nbest split alignment."
    arg_minimal_number: "[ --min_anchor_length ] arg (=8)   Minimal number of nucleotides on each\\nsides of a split."
    arg_maximal_allowed_length: "[ --max_span ] arg (=1000)         Maximal allowed span (i.e. length on\\nreference) of a split read alignment."
    max_anchors: "(=100)              Maximal allowed anchors per read\\nsuffix/prefix."
    max_anchor_pairs: "(=500)         Maximal allowed number of anchor"
    arg_maximal_allowed_sizewhen: "[ --max_insert ] arg (=50000)      Maximal allowed internal segment size\\nwhen pairing alignments for a read\\npair."
    also_output_alignments: "[ --output_secondary ]             Also output secondary alignments."
    arg_length_anchor: "[ --anchor_search_length ] arg (=20)\\nLength of anchor used for searching."
    arg_allowed_errors: "[ --anchor_errors ] arg (=2)       Allowed errors when searching for"
    arg_anchor_search: "[ --anchor_search_iter ] arg (=3)  Anchor search iterations."
    arg_filename_write: "[ --putative_variations ] arg      Filename to write a list of all\\nvariation candidates to. All candidates\\nare written, no matter how weak the\\nevidence for them to be true."
    arg_file_used: "[ --input_length_dist_in ] arg     File with known internal segment length\\nhistogram to be used to score\\nalignments."
    arg_file_internal: "[ --input_length_dist_out ] arg    File to write internal segment length\\nhistogram for uniquely mappable reads\\nto."
    arg_file_insertion: "[ --insertion_length_dist ] arg    File to write insertion length\\nhistogram for uniquely mappable reads\\nto."
    arg_file_write: "[ --deletion_length_dist ] arg     File to write deletion length histogram\\nfor uniquely mappable reads to."
    arg_number_threads: "[ --threads ] arg (=0)             Number of threads (default: 0 =\\nstrictly single-threaded)."
    use_m_mismatches: "[ --m_in_cigar ]                   Use M for matches and mismatches in\\nCIGAR strings (instead of '=' and 'X')."
    snp: "Filename to store putative SNP\\npositions to."
    arg_weight_cutoff: "[ --snp_weight_cutoff ] arg (=3)   Weight cutoff for SNPs to be written to\\nfilename given as parameter --snp."
    in_del_weight_cut_off: "(=3)        Weight cutoff for indels to be written\\nto filename given as parameter -P."
    rightmost: "Report rightmost deletions/insertions\\n(default: leftmost)."
    soft_clip: "Allow reads to be soft-clipped."
    soft_clip_open_cost: "(=35)       Cost for soft clipping a read."
    soft_clip_extend_cost: "(=3)      Cost for \\\"extending\\\" a soft clip; i.e.,\\nsoftclipping k characters from a read\\nwill cost soft_clip_open_cost+k*soft_cl\\nip_extend_cost."
    read_group: "Read group for all reads."
    read_group_library: "Library information for read group"
    alignment_dot: "--interchromosomal                    Search for interchromosomal split "
    reads_dot: "--interchrom_split_cost arg (=60)     PHRED like cost of an inter-chromosomal"
    split_dot: "--inversions                          Search for inversion split reads."
    pairings_dot: "--anchor_length_increment arg (=4)    Number of characters to increase anchor"
    found_dot: "--max_anchor_length arg (=30)         Maximal anchor length (if reached it "
    anchors_dot: "-o [ --anchor_distance ] arg (=600)   Regions size for searching for anchors."
    header_dot: "--read_group_sample arg               Sample information for read group "
  }
  output {
    File out_stdout = stdout()
  }
}