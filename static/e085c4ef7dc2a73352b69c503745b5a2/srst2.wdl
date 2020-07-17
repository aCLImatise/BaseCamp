version 1.0

task Srst2 {
  input {
    Array[String] input_se
    Array[String] input_pe
    Boolean? merge_paired
    String? forward
    String? reverse
    String? read_type
    String? mlst_db
    String? mlst_delimiter
    String? mlst_definitions
    String? mlst_max_mismatch
    Array[String] gene_db
    Boolean? no_gene_details
    String? gene_max_mismatch
    Int? min_coverage
    Int? max_divergence
    Int? min_depth
    Int? min_edge_depth
    String? prob_err
    String? truncation_score_tolerance
    String? stop_after
    String? other
    Int? max_unaligned_overlap
    String? mapq
    String? base_q
    String? sam_tools_args
    String? prefix_srst_output
    Boolean? log
    Boolean? save_scores
    Boolean? report_new_consensus
    Boolean? report_all_consensus
    Boolean? use_existing_bowtie_two_sam
    Boolean? use_existing_pile_up
    Boolean? use_existing_scores
    Boolean? keep_interim_alignment
    String? threads
    Array[String] prev_output
  }
  command <<<
    srst2 \
      ~{if defined(input_se) then ("--input_se " +  '"' + input_se + '"') else ""} \
      ~{if defined(input_pe) then ("--input_pe " +  '"' + input_pe + '"') else ""} \
      ~{true="--merge_paired" false="" merge_paired} \
      ~{if defined(forward) then ("--forward " +  '"' + forward + '"') else ""} \
      ~{if defined(reverse) then ("--reverse " +  '"' + reverse + '"') else ""} \
      ~{if defined(read_type) then ("--read_type " +  '"' + read_type + '"') else ""} \
      ~{if defined(mlst_db) then ("--mlst_db " +  '"' + mlst_db + '"') else ""} \
      ~{if defined(mlst_delimiter) then ("--mlst_delimiter " +  '"' + mlst_delimiter + '"') else ""} \
      ~{if defined(mlst_definitions) then ("--mlst_definitions " +  '"' + mlst_definitions + '"') else ""} \
      ~{if defined(mlst_max_mismatch) then ("--mlst_max_mismatch " +  '"' + mlst_max_mismatch + '"') else ""} \
      ~{if defined(gene_db) then ("--gene_db " +  '"' + gene_db + '"') else ""} \
      ~{true="--no_gene_details" false="" no_gene_details} \
      ~{if defined(gene_max_mismatch) then ("--gene_max_mismatch " +  '"' + gene_max_mismatch + '"') else ""} \
      ~{if defined(min_coverage) then ("--min_coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(max_divergence) then ("--max_divergence " +  '"' + max_divergence + '"') else ""} \
      ~{if defined(min_depth) then ("--min_depth " +  '"' + min_depth + '"') else ""} \
      ~{if defined(min_edge_depth) then ("--min_edge_depth " +  '"' + min_edge_depth + '"') else ""} \
      ~{if defined(prob_err) then ("--prob_err " +  '"' + prob_err + '"') else ""} \
      ~{if defined(truncation_score_tolerance) then ("--truncation_score_tolerance " +  '"' + truncation_score_tolerance + '"') else ""} \
      ~{if defined(stop_after) then ("--stop_after " +  '"' + stop_after + '"') else ""} \
      ~{if defined(other) then ("--other " +  '"' + other + '"') else ""} \
      ~{if defined(max_unaligned_overlap) then ("--max_unaligned_overlap " +  '"' + max_unaligned_overlap + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""} \
      ~{if defined(base_q) then ("--baseq " +  '"' + base_q + '"') else ""} \
      ~{if defined(sam_tools_args) then ("--samtools_args " +  '"' + sam_tools_args + '"') else ""} \
      ~{if defined(prefix_srst_output) then ("--output " +  '"' + prefix_srst_output + '"') else ""} \
      ~{true="--log" false="" log} \
      ~{true="--save_scores" false="" save_scores} \
      ~{true="--report_new_consensus" false="" report_new_consensus} \
      ~{true="--report_all_consensus" false="" report_all_consensus} \
      ~{true="--use_existing_bowtie2_sam" false="" use_existing_bowtie_two_sam} \
      ~{true="--use_existing_pileup" false="" use_existing_pile_up} \
      ~{true="--use_existing_scores" false="" use_existing_scores} \
      ~{true="--keep_interim_alignment" false="" keep_interim_alignment} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(prev_output) then ("--prev_output " +  '"' + prev_output + '"') else ""}
  >>>
  parameter_meta {
    input_se: "Single end read file(s) for analysing (may be gzipped)"
    input_pe: "Paired end read files for analysing (may be gzipped)"
    merge_paired: "Switch on if all the input read sets belong to a single sample, and you want to merge their data to get a single result"
    forward: "Designator for forward reads (only used if NOT in MiSeq format sample_S1_L001_R1_001.fastq.gz; otherwise default is _1, i.e. expect forward reads as sample_1.fastq.gz)"
    reverse: "Designator for reverse reads (only used if NOT in MiSeq format sample_S1_L001_R2_001.fastq.gz; otherwise default is _2, i.e. expect forward reads as sample_2.fastq.gz"
    read_type: "Read file type (for bowtie2; default is q=fastq; other options: qseq=solexa, f=fasta)."
    mlst_db: "Fasta file of MLST alleles (optional)"
    mlst_delimiter: "Character(s) separating gene name from allele number in MLST database (default \"-\", as in arcc-1)"
    mlst_definitions: "ST definitions for MLST scheme (required if mlst_db supplied and you want to calculate STs)"
    mlst_max_mismatch: "Maximum number of mismatches per read for MLST allele calling (default 10)"
    gene_db: "Fasta file/s for gene databases (optional)"
    no_gene_details: "Switch OFF verbose reporting of gene typing"
    gene_max_mismatch: "Maximum number of mismatches per read for gene detection and allele calling (default 10)"
    min_coverage: "Minimum %coverage cutoff for gene reporting (default 90)"
    max_divergence: "Maximum %divergence cutoff for gene reporting (default 10)"
    min_depth: "Minimum mean depth to flag as dubious allele call (default 5)"
    min_edge_depth: "Minimum edge depth to flag as dubious allele call (default 2)"
    prob_err: "Probability of sequencing error (default 0.01)"
    truncation_score_tolerance: "% increase in score allowed to choose non-truncated allele"
    stop_after: "Stop mapping after this number of reads have been mapped (otherwise map all)"
    other: "Other arguments to pass to bowtie2 (must be escaped, e.g. \"\--no-mixed\"."
    max_unaligned_overlap: "Read discarded from alignment if either of its ends has unaligned overlap with the reference that is longer than this value (default 10)"
    mapq: "Samtools -q parameter (default 1)"
    base_q: "Samtools -Q parameter (default 20)"
    sam_tools_args: "Other arguments to pass to samtools mpileup (must be escaped, e.g. \"\-A\")."
    prefix_srst_output: "Prefix for srst2 output files"
    log: "Switch ON logging to file (otherwise log to stdout)"
    save_scores: "Switch ON verbose reporting of all scores"
    report_new_consensus: "If a matching alleles is not found, report the consensus allele. Note, only SNP differences are considered, not indels."
    report_all_consensus: "Report the consensus allele for the most likely allele. Note, only SNP differences are considered, not indels."
    use_existing_bowtie_two_sam: "Use existing SAM file generated by Bowtie2 if available, otherwise they will be generated"
    use_existing_pile_up: "Use existing pileups if available, otherwise they will be generated"
    use_existing_scores: "Use existing scores files if available, otherwise they will be generated"
    keep_interim_alignment: "Keep interim files (sam & unsorted bam), otherwise they will be deleted after sorted bam is created"
    threads: "Use multiple threads in Bowtie and Samtools"
    prev_output: "SRST2 results files to compile (any new results from this run will also be incorporated)"
  }
}