version 1.0

task Breseq {
  input {
    File? reference
    String? name
    Int? num_processors
    File? path_breseq_default
    Boolean? polymorphism_prediction
    Int? limit_fold_coverage
    Boolean? aligned_sam
    Int? read_min_length
    Int? read_max_same_base_fraction
    Int? read_max_n_fraction
    Boolean? use_version_for_seq_id
    Int? contig_reference
    File? junction_only_reference
    Boolean? targeted_sequencing
    File? user_evidence_gd
    Int? minimum_mapping_quality
    Int? base_quality_cut_off
    Boolean? quality_score_trim
    Int? require_match_length
    Float? require_match_fraction
    String? maximum_read_mismatches
    Int? deletion_coverage_propagation_cut_off
    Int? deletion_coverage_seed_cut_off
    Int? bowtie_two_scoring
    Int? bowtie_two_stage_one
    Int? bowtie_two_stage_two
    Int? bowtie_two_junction
    Boolean? no_junction_prediction
    Int? junction_in_del_split_length
    Int? junction_alignment_pair_limit
    Int? junction_minimum_candidates
    Int? junction_maximum_candidates
    Int? junction_candidate_length_factor
    Int? junction_minimum_candidate_pos_hash_score
    Float? junction_score_cut_off
    Int? junction_minimum_pos_hash_score
    Int? junction_minimum_side_match
    Float? junction_minimum_pr_no_read_start_per_position
    Boolean? junction_allow_suboptimal_matches
    Int? consensus_score_cut_off
    Float? consensus_frequency_cut_off
    Int? consensus_minimum_variant_coverage
    Int? consensus_minimum_total_coverage
    Int? consensus_minimum_variant_coverage_each_strand
    Int? consensus_minimum_total_coverage_each_strand
    Int? consensus_reject_in_del_homopolymer_length
    Int? consensus_reject_surrounding_homopolymer_length
    Int? polymorphism_score_cut_off
    Float? polymorphism_frequency_cut_off
    Int? polymorphism_minimum_variant_coverage
    Int? polymorphism_minimum_total_coverage
    Int? polymorphism_minimum_variant_coverage_each_strand
    Int? polymorphism_minimum_total_coverage_each_strand
    Int? polymorphism_bias_cut_off
    Boolean? polymorphism_no_indels
    Int? polymorphism_reject_in_del_homopolymer_length
    Int? polymorphism_reject_surrounding_homopolymer_length
    Int? max_displayed_reads
    Boolean? brief_html_output
    File? header_genome_diff
    Boolean? no_javascript
    Boolean? skip_ra_mc_prediction
    Boolean? skip_jc_prediction
    Boolean? skip_mc_prediction
    Boolean? keep_intermediates
    Boolean? per_position_file
    Boolean? junction_debug
    Boolean? cnv
    Int? cnv_tile_size
    Boolean? cnv_ignore_redundant
  }
  command <<<
    breseq \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(num_processors) then ("--num-processors " +  '"' + num_processors + '"') else ""} \
      ~{if defined(path_breseq_default) then ("--output " +  '"' + path_breseq_default + '"') else ""} \
      ~{if (polymorphism_prediction) then "--polymorphism-prediction" else ""} \
      ~{if defined(limit_fold_coverage) then ("--limit-fold-coverage " +  '"' + limit_fold_coverage + '"') else ""} \
      ~{if (aligned_sam) then "--aligned-sam" else ""} \
      ~{if defined(read_min_length) then ("--read-min-length " +  '"' + read_min_length + '"') else ""} \
      ~{if defined(read_max_same_base_fraction) then ("--read-max-same-base-fraction " +  '"' + read_max_same_base_fraction + '"') else ""} \
      ~{if defined(read_max_n_fraction) then ("--read-max-N-fraction " +  '"' + read_max_n_fraction + '"') else ""} \
      ~{if (use_version_for_seq_id) then "--use-version-for-seq-id" else ""} \
      ~{if defined(contig_reference) then ("--contig-reference " +  '"' + contig_reference + '"') else ""} \
      ~{if defined(junction_only_reference) then ("--junction-only-reference " +  '"' + junction_only_reference + '"') else ""} \
      ~{if (targeted_sequencing) then "--targeted-sequencing" else ""} \
      ~{if defined(user_evidence_gd) then ("--user-evidence-gd " +  '"' + user_evidence_gd + '"') else ""} \
      ~{if defined(minimum_mapping_quality) then ("--minimum-mapping-quality " +  '"' + minimum_mapping_quality + '"') else ""} \
      ~{if defined(base_quality_cut_off) then ("--base-quality-cutoff " +  '"' + base_quality_cut_off + '"') else ""} \
      ~{if (quality_score_trim) then "--quality-score-trim" else ""} \
      ~{if defined(require_match_length) then ("--require-match-length " +  '"' + require_match_length + '"') else ""} \
      ~{if defined(require_match_fraction) then ("--require-match-fraction " +  '"' + require_match_fraction + '"') else ""} \
      ~{if defined(maximum_read_mismatches) then ("--maximum-read-mismatches " +  '"' + maximum_read_mismatches + '"') else ""} \
      ~{if defined(deletion_coverage_propagation_cut_off) then ("--deletion-coverage-propagation-cutoff " +  '"' + deletion_coverage_propagation_cut_off + '"') else ""} \
      ~{if defined(deletion_coverage_seed_cut_off) then ("--deletion-coverage-seed-cutoff " +  '"' + deletion_coverage_seed_cut_off + '"') else ""} \
      ~{if defined(bowtie_two_scoring) then ("--bowtie2-scoring " +  '"' + bowtie_two_scoring + '"') else ""} \
      ~{if defined(bowtie_two_stage_one) then ("--bowtie2-stage1 " +  '"' + bowtie_two_stage_one + '"') else ""} \
      ~{if defined(bowtie_two_stage_two) then ("--bowtie2-stage2 " +  '"' + bowtie_two_stage_two + '"') else ""} \
      ~{if defined(bowtie_two_junction) then ("--bowtie2-junction " +  '"' + bowtie_two_junction + '"') else ""} \
      ~{if (no_junction_prediction) then "--no-junction-prediction" else ""} \
      ~{if defined(junction_in_del_split_length) then ("--junction-indel-split-length " +  '"' + junction_in_del_split_length + '"') else ""} \
      ~{if defined(junction_alignment_pair_limit) then ("--junction-alignment-pair-limit " +  '"' + junction_alignment_pair_limit + '"') else ""} \
      ~{if defined(junction_minimum_candidates) then ("--junction-minimum-candidates " +  '"' + junction_minimum_candidates + '"') else ""} \
      ~{if defined(junction_maximum_candidates) then ("--junction-maximum-candidates " +  '"' + junction_maximum_candidates + '"') else ""} \
      ~{if defined(junction_candidate_length_factor) then ("--junction-candidate-length-factor " +  '"' + junction_candidate_length_factor + '"') else ""} \
      ~{if defined(junction_minimum_candidate_pos_hash_score) then ("--junction-minimum-candidate-pos-hash-score " +  '"' + junction_minimum_candidate_pos_hash_score + '"') else ""} \
      ~{if defined(junction_score_cut_off) then ("--junction-score-cutoff " +  '"' + junction_score_cut_off + '"') else ""} \
      ~{if defined(junction_minimum_pos_hash_score) then ("--junction-minimum-pos-hash-score " +  '"' + junction_minimum_pos_hash_score + '"') else ""} \
      ~{if defined(junction_minimum_side_match) then ("--junction-minimum-side-match " +  '"' + junction_minimum_side_match + '"') else ""} \
      ~{if defined(junction_minimum_pr_no_read_start_per_position) then ("--junction-minimum-pr-no-read-start-per-position " +  '"' + junction_minimum_pr_no_read_start_per_position + '"') else ""} \
      ~{if (junction_allow_suboptimal_matches) then "--junction-allow-suboptimal-matches" else ""} \
      ~{if defined(consensus_score_cut_off) then ("--consensus-score-cutoff " +  '"' + consensus_score_cut_off + '"') else ""} \
      ~{if defined(consensus_frequency_cut_off) then ("--consensus-frequency-cutoff " +  '"' + consensus_frequency_cut_off + '"') else ""} \
      ~{if defined(consensus_minimum_variant_coverage) then ("--consensus-minimum-variant-coverage " +  '"' + consensus_minimum_variant_coverage + '"') else ""} \
      ~{if defined(consensus_minimum_total_coverage) then ("--consensus-minimum-total-coverage " +  '"' + consensus_minimum_total_coverage + '"') else ""} \
      ~{if defined(consensus_minimum_variant_coverage_each_strand) then ("--consensus-minimum-variant-coverage-each-strand " +  '"' + consensus_minimum_variant_coverage_each_strand + '"') else ""} \
      ~{if defined(consensus_minimum_total_coverage_each_strand) then ("--consensus-minimum-total-coverage-each-strand " +  '"' + consensus_minimum_total_coverage_each_strand + '"') else ""} \
      ~{if defined(consensus_reject_in_del_homopolymer_length) then ("--consensus-reject-indel-homopolymer-length " +  '"' + consensus_reject_in_del_homopolymer_length + '"') else ""} \
      ~{if defined(consensus_reject_surrounding_homopolymer_length) then ("--consensus-reject-surrounding-homopolymer-length " +  '"' + consensus_reject_surrounding_homopolymer_length + '"') else ""} \
      ~{if defined(polymorphism_score_cut_off) then ("--polymorphism-score-cutoff " +  '"' + polymorphism_score_cut_off + '"') else ""} \
      ~{if defined(polymorphism_frequency_cut_off) then ("--polymorphism-frequency-cutoff " +  '"' + polymorphism_frequency_cut_off + '"') else ""} \
      ~{if defined(polymorphism_minimum_variant_coverage) then ("--polymorphism-minimum-variant-coverage " +  '"' + polymorphism_minimum_variant_coverage + '"') else ""} \
      ~{if defined(polymorphism_minimum_total_coverage) then ("--polymorphism-minimum-total-coverage " +  '"' + polymorphism_minimum_total_coverage + '"') else ""} \
      ~{if defined(polymorphism_minimum_variant_coverage_each_strand) then ("--polymorphism-minimum-variant-coverage-each-strand " +  '"' + polymorphism_minimum_variant_coverage_each_strand + '"') else ""} \
      ~{if defined(polymorphism_minimum_total_coverage_each_strand) then ("--polymorphism-minimum-total-coverage-each-strand " +  '"' + polymorphism_minimum_total_coverage_each_strand + '"') else ""} \
      ~{if defined(polymorphism_bias_cut_off) then ("--polymorphism-bias-cutoff " +  '"' + polymorphism_bias_cut_off + '"') else ""} \
      ~{if (polymorphism_no_indels) then "--polymorphism-no-indels" else ""} \
      ~{if defined(polymorphism_reject_in_del_homopolymer_length) then ("--polymorphism-reject-indel-homopolymer-length " +  '"' + polymorphism_reject_in_del_homopolymer_length + '"') else ""} \
      ~{if defined(polymorphism_reject_surrounding_homopolymer_length) then ("--polymorphism-reject-surrounding-homopolymer-length " +  '"' + polymorphism_reject_surrounding_homopolymer_length + '"') else ""} \
      ~{if defined(max_displayed_reads) then ("--max-displayed-reads " +  '"' + max_displayed_reads + '"') else ""} \
      ~{if (brief_html_output) then "--brief-html-output" else ""} \
      ~{if defined(header_genome_diff) then ("--header-genome-diff " +  '"' + header_genome_diff + '"') else ""} \
      ~{if (no_javascript) then "--no-javascript" else ""} \
      ~{if (skip_ra_mc_prediction) then "--skip-RA-MC-prediction" else ""} \
      ~{if (skip_jc_prediction) then "--skip-JC-prediction" else ""} \
      ~{if (skip_mc_prediction) then "--skip-MC-prediction" else ""} \
      ~{if (keep_intermediates) then "--keep-intermediates" else ""} \
      ~{if (per_position_file) then "--per-position-file" else ""} \
      ~{if (junction_debug) then "--junction-debug" else ""} \
      ~{if (cnv) then "--cnv" else ""} \
      ~{if defined(cnv_tile_size) then ("--cnv-tile-size " +  '"' + cnv_tile_size + '"') else ""} \
      ~{if (cnv_ignore_redundant) then "--cnv-ignore-redundant" else ""}
  >>>
  parameter_meta {
    reference: "File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)"
    name: "Human-readable name of the analysis run for output (DEFAULT=<none>)"
    num_processors: "Number of processors to use in multithreaded steps (DEFAULT=1)"
    path_breseq_default: "Path to breseq output (DEFAULT=.)"
    polymorphism_prediction: "The sample is not clonal. Predict polymorphic (mixed) mutations. Setting this flag changes from CONSENSUS MODE (the default) to POLYMORPHISM MODE"
    limit_fold_coverage: "Analyze a subset of the input FASTQ sequencing reads with enough bases to provide this theoretical coverage of the reference sequences. A value between 60 and 120 will usually speed up the analysis with no loss in sensitivity for clonal samples. The actual coverage achieved will be somewhat less because not all reads will map (DEFAULT=OFF)"
    aligned_sam: "Input files are aligned SAM files, rather than FASTQ files. Junction prediction steps will be skipped. Be aware that breseq assumes: (1) Your SAM file is sorted such that all alignments for a given read are on consecutive lines. You can use 'samtools sort -n' if you are not sure that this is true for the output of your alignment program. (2) You EITHER have alignment scores as additional SAM fields with the form 'AS:i:n', where n is a positive integer and higher values indicate a better alignment OR it defaults to calculating an alignment score that is equal to the number of bases in the read minus the number of inserted bases, deleted bases, and soft clipped bases in the alignment to the reference. The default highly penalizes split-read matches (with CIGAR strings such as M35D303M65)."
    read_min_length: "Reads in the input FASTQ file that are shorter than this length will be ignored. (0 = OFF) (DEFAULT=18)"
    read_max_same_base_fraction: "Reads in the input FASTQ file in which this fraction or more of the bases are the same will be ignored. (0 = OFF) (DEFAULT=0.9)"
    read_max_n_fraction: "Reads in the input FASTQ file in which this fraction or more of the bases are uncalled as N will be ignored. (0 = OFF) (DEFAULT=0.5)"
    use_version_for_seq_id: "If present, use the full VERSION in an input GenBank file (e.g., NC_001416.1) as the sequence ID instead of the LOCUS (e.g., NC_001416). You will need to use the converted reference file (data/reference.gff) for further breseq and gdtools operations on breseq output generated using this option."
    contig_reference: "File containing reference sequences in GenBank, GFF3, or FASTA format. The same coverage distribution will be fit to all of the reference sequences in this file simultaneously. This is appropriate when they are all contigs from a genome that should be present with the same copy number. Use of this option will improve performance when there are many contigs and especially when some are very short (≤1,000 bases). (DEFAULT=0)"
    junction_only_reference: "File containing reference sequences in GenBank, GFF3, or FASTA format. These references are only used for calling junctions with other reference sequences. An example of appropriate usage is including a transposon sequence not present in a reference genome. Option may be provided multiple times for multiple files. (DEFAULT=0)"
    targeted_sequencing: "Reference sequences were targeted for ultra-deep sequencing (using pull-downs or amplicons). Do not fit coverage distribution."
    user_evidence_gd: "User supplied Genome Diff file of JC and/or RA evidence items. The breseq output will report the support for these sequence changes even if they do not pass the normal filters for calling mutations in this sample."
    minimum_mapping_quality: "Ignore alignments with less than this mapping quality (MQ) when calling mutations. MQ scores are equal to -10log10(P), where P is the probability that the best alignment is not to the correct location in the reference genome. The range of MQ scores returned by bowtie2 is 0 to 255. (DEFAULT=0)"
    base_quality_cut_off: "Ignore bases with quality scores lower than this value (DEFAULT=3)"
    quality_score_trim: "Trim the ends of reads past any base with a quality score below --base-quality-score-cutoff."
    require_match_length: "Only consider alignments that cover this many bases of a read (DEFAULT=0)"
    require_match_fraction: "Only consider alignments that cover this fraction of a read (DEFAULT=0.9)"
    maximum_read_mismatches: "Don't consider reads with this many or more bases or indels that are different from the reference sequence. Unaligned bases at the end of a read also count as mismatches. Unaligned bases at the beginning of the read do NOT count as mismatches. (DEFAULT=OFF)"
    deletion_coverage_propagation_cut_off: "Value for coverage above which deletions are cutoff. 0 = calculated from coverage distribution (DEFAULT=0)"
    deletion_coverage_seed_cut_off: "Value for coverage below which deletions are seeded (DEFAULT=0)"
    bowtie_two_scoring: "All calls to bowtie2 must use the same commands for assigning scores to read alignments. Larger scores are assumed to be better by breseq. Each call to bowtie2 has this option added to its command line. (DEFAULT=\\\"--ma 1 --mp 3 --np 0 --rdg 2,3 --rfg 2,3 --ignore-quals\\\")"
    bowtie_two_stage_one: "Settings for mapping criteria used for the stage 1 alignment. This step is normally meant for quickly aligning near-perfect matches. (DEFAULT=\\\"--local -i S,1,0.25 --score-min L,1,0.9 -k 2000\\\")"
    bowtie_two_stage_two: "Settings for mapping criteria used for the stage 2 alignment. If set to the empty string \\\"\\\", then stage 2 alignment is skipped. This step is normally meant for exhaustively mapping reads that were unmapped by stage 1. (DEFAULT=\\\"--local -i S,1,0.25 --score-min L,6,0.2 -k 2000\\\")"
    bowtie_two_junction: "Settings for mapping criteria used in aligning reads to candidate junctions. (DEFAULT=\\\"--local -i S,1,0.25 --score-min L,1,0.70 -k 2000\\\")"
    no_junction_prediction: "Do not predict new sequence junctions"
    junction_in_del_split_length: "Split read alignments on indels of this many or more bases. Indel mutations of this length or longer will be predicted by JC evidence and those that are shorter will be predicted from RA evience (DEFAULT=3)"
    junction_alignment_pair_limit: "Only consider this many passed alignment pairs when creating candidate junction sequences (0 = DO NOT LIMIT) (DEFAULT=100000)"
    junction_minimum_candidates: "Test at least this many of the top-scoring junction candidates, regardless of their length (DEFAULT=100)"
    junction_maximum_candidates: "Test no more than this many of the top-scoring junction candidates (0 = DO NOT LIMIT) (DEFAULT=5000)"
    junction_candidate_length_factor: "Accept top-scoring junction candidates to test until their cumulative length is this factor times the total reference sequence length (0 = DO NOT LIMIT) (DEFAULT=0.1)"
    junction_minimum_candidate_pos_hash_score: "Minimum number of distinct spanning read start positions required to create a junction candidate for further testing (DEFAULT=2)"
    junction_score_cut_off: "Maximum negative log10 probability of uneven coverage across a junction breakpoint to accept (0 = OFF) (DEFAULT=3.0)"
    junction_minimum_pos_hash_score: "Minimum number of distinct spanning read start positions required to accept a junction (DEFAULT = consensus mode, 3; polymorphism mode, 3)"
    junction_minimum_side_match: "Minimum number of bases a read must extend past any overlap or read-only sequence at the breakpoint of a junction on each side to count as support for the junction (DEFAULT = consensus mode, 1; polymorphism mode, 6)"
    junction_minimum_pr_no_read_start_per_position: "Minimum probablilty assigned that no mapped read will start at a given position and strand for junction prediction (DEFAULT=0.1)"
    junction_allow_suboptimal_matches: "Assign a read to the junction candidate with the most overall support as long as its match to this junction is better than to any location in the reference sequence, even if it matches a different junction candidate better. This behavior was the default before v0.35.0. It will align more reads to junctions but risks misassigning some reads to the wrong junction candidates. It is only recommended that you use this option in CONSENSUS mode"
    consensus_score_cut_off: "Log10 E-value cutoff for consensus base substitutions and small indels (DEFAULT = 10)"
    consensus_frequency_cut_off: "Only predict consensus mutations when the variant allele frequency is above this value. (DEFAULT = consensus mode, 0.8; polymorphism mode, 0.8)"
    consensus_minimum_variant_coverage: "Only predict consensus mutations when at least this many reads support the mutation. (DEFAULT = consensus mode, 0; polymorphism mode, 0)"
    consensus_minimum_total_coverage: "Only predict consensus mutations when at least this many reads total are aligned to a genome position. (DEFAULT = consensus mode, 0; polymorphism mode, 0)"
    consensus_minimum_variant_coverage_each_strand: "Only predict consensus mutations when at least this many reads on each strand support the mutation. (DEFAULT = consensus mode, 0; polymorphism mode, 0)"
    consensus_minimum_total_coverage_each_strand: "Only predict consensus mutations when at least this many reads on each strand are aligned to a genome position. (DEFAULT = consensus mode, 0; polymorphism mode, 0)"
    consensus_reject_in_del_homopolymer_length: "Reject insertion/deletion polymorphisms which could result from expansion/contraction of homopolymer repeats with this length or greater in the reference genome (0 = OFF) (DEFAULT = consensus mode, OFF; polymorphism mode, OFF)"
    consensus_reject_surrounding_homopolymer_length: "Reject polymorphic base substitutions that create a homopolymer with this many or more of one base in a row. The homopolymer must begin and end after the changed base. For example, TATTT->TTTTT would be rejected with a setting of 5, but ATTTT->TTTTT would not. (0 = OFF) (DEFAULT = consensus mode, OFF; polymorphism mode, OFF)"
    polymorphism_score_cut_off: "Log10 E-value cutoff for test of polymorphism vs no polymorphism (DEFAULT = consensus mode, 10; polymorphism mode, 2)"
    polymorphism_frequency_cut_off: "Only predict polymorphisms when the minor variant allele frequency is greater than this value. For example, a setting of 0.05 will reject all polymorphisms with a non-reference frequency of <0.05, and any variants with a non-reference frequency of ≥ 0.95 (which is 1 - 0.05) will be rejected as polymorphisms and instead predicted to be consensus mutations (DEFAULT = consensus mode, 0.2; polymorphism mode, 0.05)"
    polymorphism_minimum_variant_coverage: "Only predict polymorphisms when at least this many reads support each alternative allele. (DEFAULT = consensus mode, 0; polymorphism mode, 0)"
    polymorphism_minimum_total_coverage: "Only predict polymorphisms when at least this many reads total are aligned to a genome position. (DEFAULT = consensus mode, 0; polymorphism mode, 0)"
    polymorphism_minimum_variant_coverage_each_strand: "Only predict polymorphisms when at least this many reads on each strand support each alternative allele. (DEFAULT = consensus mode, 0; polymorphism mode, 2)"
    polymorphism_minimum_total_coverage_each_strand: "Only predict polymorphisms when at least this many reads on each strand are aligned to a genome position. (DEFAULT = consensus mode, 0; polymorphism mode, 0)"
    polymorphism_bias_cut_off: "P-value criterion for Fisher's exact test for strand bias AND K-S test for quality score bias. (0 = OFF) (DEFAULT = consensus mode, OFF; polymorphism mode, OFF)"
    polymorphism_no_indels: "Do not predict insertion/deletion polymorphisms from read alignment evidence"
    polymorphism_reject_in_del_homopolymer_length: "Reject insertion/deletion polymorphisms which could result from expansion/contraction of homopolymer repeats with this length or greater in the reference genome (0 = OFF) (DEFAULT = consensus mode, OFF; polymorphism mode, 3)"
    polymorphism_reject_surrounding_homopolymer_length: "Reject polymorphic base substitutions that create a homopolymer with this many or more of one base in a row. The homopolymer must begin and end after the changed base. For example, TATTT->TTTTT would be rejected with a setting of 5, but ATTTT->TTTTT would not. (0 = OFF) (DEFAULT = consensus mode, OFF; polymorphism mode, 5)"
    max_displayed_reads: "Maximum number of reads to display in the HTML output for an evidence item (DEFAULT=100)"
    brief_html_output: "Don't create detailed output files for evidence (no read alignments or coverage plots)"
    header_genome_diff: "Include header information from this GenomeDiff file in output.gd"
    no_javascript: "Don't include javascript in the HTML output"
    skip_ra_mc_prediction: "Skip generating read alignment and missing coverage evidence."
    skip_jc_prediction: "Skip generating new junction evidence."
    skip_mc_prediction: "Skip generating missing coverage evidence."
    keep_intermediates: "Do not delete intermediate files."
    per_position_file: "Create additional file of per-position aligned bases"
    junction_debug: "Output additional junction debugging files"
    cnv: "Do experimental copy number variation prediction"
    cnv_tile_size: "Tile size for copy number variation prediction (DEFAULT=500)"
    cnv_ignore_redundant: "Only consider non-redundant coverage when using cnv"
  }
  output {
    File out_stdout = stdout()
    File out_path_breseq_default = "${in_path_breseq_default}"
    File out_user_evidence_gd = "${in_user_evidence_gd}"
    File out_header_genome_diff = "${in_header_genome_diff}"
  }
}