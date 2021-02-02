class: CommandLineTool
id: aletsch.cwl
inputs:
- id: in_profile
  doc: profiling individual samples and exit (will write to files if -p provided)
  type: boolean
  inputBinding:
    prefix: --profile
- id: in_boost_precision
  doc: 'reduce false positives, default: not to do so'
  type: boolean
  inputBinding:
    prefix: --boost_precision
- id: in_lslash_chrm_list_string
  doc: 'list of chromosomes that will be assembled, default: N/A (i.e., assemble all)'
  type: string
  inputBinding:
    prefix: -l/--chrm_list_string
- id: in_lslash_chrm_list_file
  doc: 'file with chromosomes that will be assembled, default: N/A (i.e., assemble
    all)'
  type: File
  inputBinding:
    prefix: -L/--chrm_list_file
- id: in_d_slash_output_gtf_dir
  doc: 'existing directory for individual transcripts, default: N/A'
  type: Directory
  inputBinding:
    prefix: -d/--output_gtf_dir
- id: in_b_slash_output_bridged_bam_dir
  doc: 'existing directory for individual bridged alignments, default: N/A'
  type: Directory
  inputBinding:
    prefix: -b/--output_bridged_bam_dir
- id: in_p_slash_profile_dir
  doc: 'existing directory for saving/loading profiles of each samples, default: N/A'
  type: Directory
  inputBinding:
    prefix: -p/--profile_dir
- id: in_t_slash_max_threads
  doc: 'maximized number of threads, default: 10'
  type: long
  inputBinding:
    prefix: -t/--max_threads
- id: in_c_slash_max_group_size
  doc: 'the maximized number of splice graphs that will be combined, default: 20'
  type: long
  inputBinding:
    prefix: -c/--max_group_size
- id: in_s_slash_min_grouping_similarity
  doc: 'the minimized similarity for two graphs to be combined, default: 0.2'
  type: double
  inputBinding:
    prefix: -s/--min_grouping_similarity
- id: in_min_bridging_score
  doc: 'the minimum score for bridging a paired-end reads, default: 1.5'
  type: double
  inputBinding:
    prefix: --min_bridging_score
- id: in_min_splice_bund_ary_hits
  doc: 'the minimum number of spliced reads required to support a junction, default:
    1'
  type: long
  inputBinding:
    prefix: --min_splice_bundary_hits
- id: in_min_transcript_coverage
  doc: 'minimum coverage required for a multi-exon transcript, default: 1.0'
  type: double
  inputBinding:
    prefix: --min_transcript_coverage
- id: in_min_transcript_length_base
  doc: 'default: 150'
  type: long
  inputBinding:
    prefix: --min_transcript_length_base
- id: in_min_transcript_length_increase
  doc: 'default: 50, minimum length of a transcript: base + #exons * increase'
  type: long
  inputBinding:
    prefix: --min_transcript_length_increase
- id: in_min_single_exon_coverage
  doc: 'minimum coverage required for a single-exon transcript, default: 20'
  type: double
  inputBinding:
    prefix: --min_single_exon_coverage
- id: in_min_single_exon_transcript_length
  doc: 'minimum length of single-exon transcript, default: 250'
  type: long
  inputBinding:
    prefix: --min_single_exon_transcript_length
- id: in_min_single_exon_clustering_overlap
  doc: 'minimum overlaping ratio to merge two single-exon transcripts, default: 0.8'
  type: double
  inputBinding:
    prefix: --min_single_exon_clustering_overlap
- id: in_min_mapping_quality
  doc: 'ignore reads with mapping quality less than this value, default: 1'
  type: long
  inputBinding:
    prefix: --min_mapping_quality
- id: in_max_num_cigar
  doc: 'ignore reads with CIGAR size larger than this value, default: 1000'
  type: long
  inputBinding:
    prefix: --max_num_cigar
- id: in_min_bundle_gap
  doc: 'minimum distances required to start a new bundle, default: 50'
  type: long
  inputBinding:
    prefix: --min_bundle_gap
- id: in_min_num_hits_in_bundle
  doc: 'minimum number of reads required in a bundle, default: 20'
  type: long
  inputBinding:
    prefix: --min_num_hits_in_bundle
- id: in_min_flank_length
  doc: 'minimum match length in each side for a spliced read, default: 3'
  type: long
  inputBinding:
    prefix: --min_flank_length
- id: in_min_boundary_log_ratio
  doc: 'minimum log-ratio to identify a new boundary, default: 2.0'
  type: double
  inputBinding:
    prefix: --min_boundary_log_ratio
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- aletsch
