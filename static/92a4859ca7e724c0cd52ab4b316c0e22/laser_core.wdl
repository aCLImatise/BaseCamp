version 1.0

task LaserCore {
  input {
    Boolean? very_verbose_caution
    Boolean? single_end
    Boolean? skip_reads_exist
    String? max_input_aln
    Boolean? abort_when_set
    Boolean? arg_value_subtract
    Boolean? arg_maximum_number
    Boolean? arg_maximum_phred
    Boolean? arg_phred_an
    Boolean? affine_gap_costs
    String? gap_extend_cost
    Boolean? arg_splitting_alignment
    Boolean? inter_chromosomal
    String? inter_chrom_split_cost
    Boolean? inversions
    String? inversion_split_cost
    Boolean? arg_reportevaluate_split
    Boolean? arg_minimal_number
    Boolean? arg_maximal_allowed_ie
    String? max_anchors
    String? max_anchor_pairs
    String? anchor_length_increment
    String? max_anchor_length
    Boolean? arg_maximal_allowed_size
    Boolean? also_output_alignments
    Boolean? arg_length_used
    Boolean? arg_allowed_errors
    Boolean? arg_regions_size
    Boolean? arg_anchor_search
    Boolean? arg_filename_write
    Boolean? arg_file_known
    Boolean? arg_file_internal
    Boolean? arg_file_insertion
    Boolean? arg_file_write
    Boolean? arg_number_default
    Boolean? use_m_matches
    String? snp
    Boolean? arg_weight_cutoff
    String? in_del_weight_cut_off
    Boolean? rightmost
    Boolean? soft_clip
    String? soft_clip_open_cost
    String? soft_clip_extend_cost
    String? read_group
    String? read_group_library
    String? read_group_sample
  }
  command <<<
    laser-core \
      ~{true="-v" false="" very_verbose_caution} \
      ~{true="--single-end" false="" single_end} \
      ~{true="-X" false="" skip_reads_exist} \
      ~{if defined(max_input_aln) then ("--max_input_aln " +  '"' + max_input_aln + '"') else ""} \
      ~{true="-I" false="" abort_when_set} \
      ~{true="-p" false="" arg_value_subtract} \
      ~{true="-m" false="" arg_maximum_number} \
      ~{true="-c" false="" arg_maximum_phred} \
      ~{true="-i" false="" arg_phred_an} \
      ~{true="--affine_gapcosts" false="" affine_gap_costs} \
      ~{if defined(gap_extend_cost) then ("--gap_extend_cost " +  '"' + gap_extend_cost + '"') else ""} \
      ~{true="-s" false="" arg_splitting_alignment} \
      ~{true="--interchromosomal" false="" inter_chromosomal} \
      ~{if defined(inter_chrom_split_cost) then ("--interchrom_split_cost " +  '"' + inter_chrom_split_cost + '"') else ""} \
      ~{true="--inversions" false="" inversions} \
      ~{if defined(inversion_split_cost) then ("--inversion_split_cost " +  '"' + inversion_split_cost + '"') else ""} \
      ~{true="-d" false="" arg_reportevaluate_split} \
      ~{true="-a" false="" arg_minimal_number} \
      ~{true="-n" false="" arg_maximal_allowed_ie} \
      ~{if defined(max_anchors) then ("--max_anchors " +  '"' + max_anchors + '"') else ""} \
      ~{if defined(max_anchor_pairs) then ("--max_anchor_pairs " +  '"' + max_anchor_pairs + '"') else ""} \
      ~{if defined(anchor_length_increment) then ("--anchor_length_increment " +  '"' + anchor_length_increment + '"') else ""} \
      ~{if defined(max_anchor_length) then ("--max_anchor_length " +  '"' + max_anchor_length + '"') else ""} \
      ~{true="-N" false="" arg_maximal_allowed_size} \
      ~{true="-S" false="" also_output_alignments} \
      ~{true="-A" false="" arg_length_used} \
      ~{true="-e" false="" arg_allowed_errors} \
      ~{true="-o" false="" arg_regions_size} \
      ~{true="-t" false="" arg_anchor_search} \
      ~{true="-P" false="" arg_filename_write} \
      ~{true="-l" false="" arg_file_known} \
      ~{true="-L" false="" arg_file_internal} \
      ~{true="-R" false="" arg_file_insertion} \
      ~{true="-D" false="" arg_file_write} \
      ~{true="-T" false="" arg_number_default} \
      ~{true="-M" false="" use_m_matches} \
      ~{if defined(snp) then ("--snp " +  '"' + snp + '"') else ""} \
      ~{true="-w" false="" arg_weight_cutoff} \
      ~{if defined(in_del_weight_cut_off) then ("--indel_weight_cutoff " +  '"' + in_del_weight_cut_off + '"') else ""} \
      ~{true="--rightmost" false="" rightmost} \
      ~{true="--soft_clip" false="" soft_clip} \
      ~{if defined(soft_clip_open_cost) then ("--soft_clip_open_cost " +  '"' + soft_clip_open_cost + '"') else ""} \
      ~{if defined(soft_clip_extend_cost) then ("--soft_clip_extend_cost " +  '"' + soft_clip_extend_cost + '"') else ""} \
      ~{if defined(read_group) then ("--read_group " +  '"' + read_group + '"') else ""} \
      ~{if defined(read_group_library) then ("--read_group_library " +  '"' + read_group_library + '"') else ""} \
      ~{if defined(read_group_sample) then ("--read_group_sample " +  '"' + read_group_sample + '"') else ""}
  >>>
  parameter_meta {
    very_verbose_caution: "[ --verbose ]                      Be (very) verbose. CAUTION: produces a  lot of output to stderr."
    single_end: "Process single end reads (instead of  paired end)."
    skip_reads_exist: "[ --skip_non_xa ]                  Skip reads for which other alignments  exist (i.e. X0+X1>1), but no XA tag is  present. Turn on when using BWA."
    max_input_aln: "(=-1)             Maximum number of input anchor  alignments. If more are given, skip  this anchor (but not the whole read)."
    abort_when_set: "[ --ignore_wrong_X_tags ]          Do not abort when wrongly set X0/X1  tags are encountered."
    arg_value_subtract: "[ --phred_offset ] arg (=33)       Value to subtract from ASCII code to  get the PHRED quality."
    arg_maximum_number: "[ --max_mapping ] arg (=10)        Maximum number of mappings for each  read in a pair. If more mappings are  found, the read is skipped."
    arg_maximum_phred: "[ --cost_threshold ] arg (=115)    Maximum PHRED sum allowed for (split)  read alignments."
    arg_phred_an: "[ --indel_cost ] arg (=30)         PHRED like cost of an indel."
    affine_gap_costs: "Use affine gapcosts (instead of linear  gapcosts). If enabled, gap open costs  are given by --indel_cost and gap  extend costs are given by  --gap_extend_cost, i.e. a gap of length k costs indel_cost+k*gap_extend_cost."
    gap_extend_cost: "(=10)           Gap extend cost. Only effective in  connection with --affine_gapcosts."
    arg_splitting_alignment: "[ --split_cost ] arg (=25)         PHRED like cost of splitting an  alignment."
    inter_chromosomal: "Search for interchromosomal split  reads."
    inter_chrom_split_cost: "(=60)     PHRED like cost of an inter-chromosomal split."
    inversions: "Search for inversion split reads."
    inversion_split_cost: "(=45)      PHRED like cost of an inversion split."
    arg_reportevaluate_split: "[ --secondary_aln_phred_diff ] arg (=29) Report/evaluate split alignments with a difference of at most this value to the best split alignment."
    arg_minimal_number: "[ --min_anchor_length ] arg (=8)   Minimal number of nucleotides on each  sides of a split."
    arg_maximal_allowed_ie: "[ --max_span ] arg (=1000)         Maximal allowed span (i.e. length on  reference) of a split read alignment."
    max_anchors: "(=100)              Maximal allowed anchors per read  suffix/prefix."
    max_anchor_pairs: "(=500)         Maximal allowed number of anchor  pairings."
    anchor_length_increment: "(=4)    Number of characters to increase anchor length by if too many anchors are  found."
    max_anchor_length: "(=30)         Maximal anchor length (if reached it  will not be increased any further."
    arg_maximal_allowed_size: "[ --max_insert ] arg (=50000)      Maximal allowed internal segment size  when pairing alignments for a read  pair."
    also_output_alignments: "[ --output_secondary ]             Also output secondary alignments."
    arg_length_used: "[ --anchor_search_length ] arg (=20) Length of anchor used for searching."
    arg_allowed_errors: "[ --anchor_errors ] arg (=2)       Allowed errors when searching for  anchors."
    arg_regions_size: "[ --anchor_distance ] arg (=600)   Regions size for searching for anchors."
    arg_anchor_search: "[ --anchor_search_iter ] arg (=3)  Anchor search iterations."
    arg_filename_write: "[ --putative_variations ] arg      Filename to write a list of all  variation candidates to. All candidates are written, no matter how weak the  evidence for them to be true."
    arg_file_known: "[ --input_length_dist_in ] arg     File with known internal segment length histogram to be used to score  alignments."
    arg_file_internal: "[ --input_length_dist_out ] arg    File to write internal segment length  histogram for uniquely mappable reads  to."
    arg_file_insertion: "[ --insertion_length_dist ] arg    File to write insertion length  histogram for uniquely mappable reads  to."
    arg_file_write: "[ --deletion_length_dist ] arg     File to write deletion length histogram for uniquely mappable reads to."
    arg_number_default: "[ --threads ] arg (=0)             Number of threads (default: 0 =  strictly single-threaded)."
    use_m_matches: "[ --m_in_cigar ]                   Use M for matches and mismatches in  CIGAR strings (instead of '=' and 'X')."
    snp: "Filename to store putative SNP  positions to."
    arg_weight_cutoff: "[ --snp_weight_cutoff ] arg (=3)   Weight cutoff for SNPs to be written to filename given as parameter --snp."
    in_del_weight_cut_off: "(=3)        Weight cutoff for indels to be written  to filename given as parameter -P."
    rightmost: "Report rightmost deletions/insertions  (default: leftmost)."
    soft_clip: "Allow reads to be soft-clipped."
    soft_clip_open_cost: "(=35)       Cost for soft clipping a read."
    soft_clip_extend_cost: "(=3)      Cost for \"extending\" a soft clip; i.e., softclipping k characters from a read  will cost soft_clip_open_cost+k*soft_cl ip_extend_cost."
    read_group: "Read group for all reads."
    read_group_library: "Library information for read group  header."
    read_group_sample: "Sample information for read group  header."
  }
}