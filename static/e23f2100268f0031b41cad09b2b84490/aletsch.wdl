version 1.0

task Aletsch {
  input {
    Boolean? profile
    Boolean? boost_precision
    String? lslash_chrm_list_string
    File? lslash_chrm_list_file
    Directory? d_slash_output_gtf_dir
    Directory? b_slash_output_bridged_bam_dir
    Directory? p_slash_profile_dir
    Int? t_slash_max_threads
    Int? c_slash_max_group_size
    Float? s_slash_min_grouping_similarity
    Float? min_bridging_score
    Int? min_splice_bund_ary_hits
    Float? min_transcript_coverage
    Int? min_transcript_length_base
    Int? min_transcript_length_increase
    Float? min_single_exon_coverage
    Int? min_single_exon_transcript_length
    Float? min_single_exon_clustering_overlap
    Int? min_mapping_quality
    Int? max_num_cigar
    Int? min_bundle_gap
    Int? min_num_hits_in_bundle
    Int? min_flank_length
    Float? min_boundary_log_ratio
    String? o
    String? i
  }
  command <<<
    aletsch \
      ~{if (profile) then "--profile" else ""} \
      ~{if (boost_precision) then "--boost_precision" else ""} \
      ~{if defined(lslash_chrm_list_string) then ("-l/--chrm_list_string " +  '"' + lslash_chrm_list_string + '"') else ""} \
      ~{if defined(lslash_chrm_list_file) then ("-L/--chrm_list_file " +  '"' + lslash_chrm_list_file + '"') else ""} \
      ~{if defined(d_slash_output_gtf_dir) then ("-d/--output_gtf_dir " +  '"' + d_slash_output_gtf_dir + '"') else ""} \
      ~{if defined(b_slash_output_bridged_bam_dir) then ("-b/--output_bridged_bam_dir " +  '"' + b_slash_output_bridged_bam_dir + '"') else ""} \
      ~{if defined(p_slash_profile_dir) then ("-p/--profile_dir " +  '"' + p_slash_profile_dir + '"') else ""} \
      ~{if defined(t_slash_max_threads) then ("-t/--max_threads " +  '"' + t_slash_max_threads + '"') else ""} \
      ~{if defined(c_slash_max_group_size) then ("-c/--max_group_size " +  '"' + c_slash_max_group_size + '"') else ""} \
      ~{if defined(s_slash_min_grouping_similarity) then ("-s/--min_grouping_similarity " +  '"' + s_slash_min_grouping_similarity + '"') else ""} \
      ~{if defined(min_bridging_score) then ("--min_bridging_score " +  '"' + min_bridging_score + '"') else ""} \
      ~{if defined(min_splice_bund_ary_hits) then ("--min_splice_bundary_hits " +  '"' + min_splice_bund_ary_hits + '"') else ""} \
      ~{if defined(min_transcript_coverage) then ("--min_transcript_coverage " +  '"' + min_transcript_coverage + '"') else ""} \
      ~{if defined(min_transcript_length_base) then ("--min_transcript_length_base " +  '"' + min_transcript_length_base + '"') else ""} \
      ~{if defined(min_transcript_length_increase) then ("--min_transcript_length_increase " +  '"' + min_transcript_length_increase + '"') else ""} \
      ~{if defined(min_single_exon_coverage) then ("--min_single_exon_coverage " +  '"' + min_single_exon_coverage + '"') else ""} \
      ~{if defined(min_single_exon_transcript_length) then ("--min_single_exon_transcript_length " +  '"' + min_single_exon_transcript_length + '"') else ""} \
      ~{if defined(min_single_exon_clustering_overlap) then ("--min_single_exon_clustering_overlap " +  '"' + min_single_exon_clustering_overlap + '"') else ""} \
      ~{if defined(min_mapping_quality) then ("--min_mapping_quality " +  '"' + min_mapping_quality + '"') else ""} \
      ~{if defined(max_num_cigar) then ("--max_num_cigar " +  '"' + max_num_cigar + '"') else ""} \
      ~{if defined(min_bundle_gap) then ("--min_bundle_gap " +  '"' + min_bundle_gap + '"') else ""} \
      ~{if defined(min_num_hits_in_bundle) then ("--min_num_hits_in_bundle " +  '"' + min_num_hits_in_bundle + '"') else ""} \
      ~{if defined(min_flank_length) then ("--min_flank_length " +  '"' + min_flank_length + '"') else ""} \
      ~{if defined(min_boundary_log_ratio) then ("--min_boundary_log_ratio " +  '"' + min_boundary_log_ratio + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    profile: "profiling individual samples and exit (will write to files if -p provided)"
    boost_precision: "reduce false positives, default: not to do so"
    lslash_chrm_list_string: "list of chromosomes that will be assembled, default: N/A (i.e., assemble all)"
    lslash_chrm_list_file: "file with chromosomes that will be assembled, default: N/A (i.e., assemble all)"
    d_slash_output_gtf_dir: "existing directory for individual transcripts, default: N/A"
    b_slash_output_bridged_bam_dir: "existing directory for individual bridged alignments, default: N/A"
    p_slash_profile_dir: "existing directory for saving/loading profiles of each samples, default: N/A"
    t_slash_max_threads: "maximized number of threads, default: 10"
    c_slash_max_group_size: "the maximized number of splice graphs that will be combined, default: 20"
    s_slash_min_grouping_similarity: "the minimized similarity for two graphs to be combined, default: 0.2"
    min_bridging_score: "the minimum score for bridging a paired-end reads, default: 1.5"
    min_splice_bund_ary_hits: "the minimum number of spliced reads required to support a junction, default: 1"
    min_transcript_coverage: "minimum coverage required for a multi-exon transcript, default: 1.0"
    min_transcript_length_base: "default: 150"
    min_transcript_length_increase: "default: 50, minimum length of a transcript: base + #exons * increase"
    min_single_exon_coverage: "minimum coverage required for a single-exon transcript, default: 20"
    min_single_exon_transcript_length: "minimum length of single-exon transcript, default: 250"
    min_single_exon_clustering_overlap: "minimum overlaping ratio to merge two single-exon transcripts, default: 0.8"
    min_mapping_quality: "ignore reads with mapping quality less than this value, default: 1"
    max_num_cigar: "ignore reads with CIGAR size larger than this value, default: 1000"
    min_bundle_gap: "minimum distances required to start a new bundle, default: 50"
    min_num_hits_in_bundle: "minimum number of reads required in a bundle, default: 20"
    min_flank_length: "minimum match length in each side for a spliced read, default: 3"
    min_boundary_log_ratio: "minimum log-ratio to identify a new boundary, default: 2.0"
    o: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}