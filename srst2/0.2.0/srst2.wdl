version 1.0

task Srst2 {
  input {
    Array[String] input_se
    Array[String] input_pe
    Boolean? merge_paired
    Int? forward
    Int? reverse
    String? read_type
    File? mlst_db
    Int? mlst_delimiter
    String? mlst_definitions
    Int? mlst_max_mismatch
    Array[String] gene_db
    Boolean? no_gene_details
    Int? gene_max_mismatch
    Int? min_coverage
    Int? max_divergence
    Int? min_depth
    Int? min_edge_depth
    Float? prob_err
    String? truncation_score_tolerance
    Int? stop_after
    Int? other
    Int? max_unaligned_overlap
    Int? mapq
    Int? base_q
    String? sam_tools_args
    Int? prefix_srst_output
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
      ~{if (merge_paired) then "--merge_paired" else ""} \
      ~{if defined(forward) then ("--forward " +  '"' + forward + '"') else ""} \
      ~{if defined(reverse) then ("--reverse " +  '"' + reverse + '"') else ""} \
      ~{if defined(read_type) then ("--read_type " +  '"' + read_type + '"') else ""} \
      ~{if defined(mlst_db) then ("--mlst_db " +  '"' + mlst_db + '"') else ""} \
      ~{if defined(mlst_delimiter) then ("--mlst_delimiter " +  '"' + mlst_delimiter + '"') else ""} \
      ~{if defined(mlst_definitions) then ("--mlst_definitions " +  '"' + mlst_definitions + '"') else ""} \
      ~{if defined(mlst_max_mismatch) then ("--mlst_max_mismatch " +  '"' + mlst_max_mismatch + '"') else ""} \
      ~{if defined(gene_db) then ("--gene_db " +  '"' + gene_db + '"') else ""} \
      ~{if (no_gene_details) then "--no_gene_details" else ""} \
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
      ~{if (log) then "--log" else ""} \
      ~{if (save_scores) then "--save_scores" else ""} \
      ~{if (report_new_consensus) then "--report_new_consensus" else ""} \
      ~{if (report_all_consensus) then "--report_all_consensus" else ""} \
      ~{if (use_existing_bowtie_two_sam) then "--use_existing_bowtie2_sam" else ""} \
      ~{if (use_existing_pile_up) then "--use_existing_pileup" else ""} \
      ~{if (use_existing_scores) then "--use_existing_scores" else ""} \
      ~{if (keep_interim_alignment) then "--keep_interim_alignment" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(prev_output) then ("--prev_output " +  '"' + prev_output + '"') else ""}
  >>>
  parameter_meta {
    input_se: "Single end read file(s) for analysing (may be gzipped)"
    input_pe: "Paired end read files for analysing (may be gzipped)"
    merge_paired: "Switch on if all the input read sets belong to a\\nsingle sample, and you want to merge their data to get\\na single result"
    forward: "Designator for forward reads (only used if NOT in\\nMiSeq format sample_S1_L001_R1_001.fastq.gz; otherwise\\ndefault is _1, i.e. expect forward reads as\\nsample_1.fastq.gz)"
    reverse: "Designator for reverse reads (only used if NOT in\\nMiSeq format sample_S1_L001_R2_001.fastq.gz; otherwise\\ndefault is _2, i.e. expect forward reads as\\nsample_2.fastq.gz"
    read_type: "Read file type (for bowtie2; default is q=fastq; other\\noptions: qseq=solexa, f=fasta)."
    mlst_db: "Fasta file of MLST alleles (optional)"
    mlst_delimiter: "Character(s) separating gene name from allele number\\nin MLST database (default \\\"-\\\", as in arcc-1)"
    mlst_definitions: "ST definitions for MLST scheme (required if mlst_db\\nsupplied and you want to calculate STs)"
    mlst_max_mismatch: "Maximum number of mismatches per read for MLST allele\\ncalling (default 10)"
    gene_db: "Fasta file/s for gene databases (optional)"
    no_gene_details: "Switch OFF verbose reporting of gene typing"
    gene_max_mismatch: "Maximum number of mismatches per read for gene\\ndetection and allele calling (default 10)"
    min_coverage: "Minimum %coverage cutoff for gene reporting (default\\n90)"
    max_divergence: "Maximum %divergence cutoff for gene reporting (default\\n10)"
    min_depth: "Minimum mean depth to flag as dubious allele call\\n(default 5)"
    min_edge_depth: "Minimum edge depth to flag as dubious allele call\\n(default 2)"
    prob_err: "Probability of sequencing error (default 0.01)"
    truncation_score_tolerance: "% increase in score allowed to choose non-truncated\\nallele"
    stop_after: "Stop mapping after this number of reads have been\\nmapped (otherwise map all)"
    other: "Other arguments to pass to bowtie2 (must be escaped,\\ne.g. \\\"\\--no-mixed\\\"."
    max_unaligned_overlap: "Read discarded from alignment if either of its ends\\nhas unaligned overlap with the reference that is\\nlonger than this value (default 10)"
    mapq: "Samtools -q parameter (default 1)"
    base_q: "Samtools -Q parameter (default 20)"
    sam_tools_args: "Other arguments to pass to samtools mpileup (must be\\nescaped, e.g. \\\"\\-A\\\")."
    prefix_srst_output: "Prefix for srst2 output files"
    log: "Switch ON logging to file (otherwise log to stdout)"
    save_scores: "Switch ON verbose reporting of all scores"
    report_new_consensus: "If a matching alleles is not found, report the\\nconsensus allele. Note, only SNP differences are\\nconsidered, not indels."
    report_all_consensus: "Report the consensus allele for the most likely\\nallele. Note, only SNP differences are considered, not\\nindels."
    use_existing_bowtie_two_sam: "Use existing SAM file generated by Bowtie2 if\\navailable, otherwise they will be generated"
    use_existing_pile_up: "Use existing pileups if available, otherwise they will\\nbe generated"
    use_existing_scores: "Use existing scores files if available, otherwise they\\nwill be generated"
    keep_interim_alignment: "Keep interim files (sam & unsorted bam), otherwise\\nthey will be deleted after sorted bam is created"
    threads: "Use multiple threads in Bowtie and Samtools"
    prev_output: "SRST2 results files to compile (any new results from\\nthis run will also be incorporated)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}