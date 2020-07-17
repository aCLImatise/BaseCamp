version 1.0

task SimulateNonSilentRatio {
  input {
    String? log_level
    String? log
    String? gene_fasta_file
    String? mutations
    String? bed
    String? processes
    String? num_permutations
    String? context
    String? score_dir
    Boolean? by_sample
    Boolean? use_unmapped
    String? genome
    String? observed_output
    String? output_text_file_simulation
  }
  command <<<
    simulate_non_silent_ratio \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(gene_fasta_file) then ("--input " +  '"' + gene_fasta_file + '"') else ""} \
      ~{if defined(mutations) then ("--mutations " +  '"' + mutations + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(num_permutations) then ("--num-permutations " +  '"' + num_permutations + '"') else ""} \
      ~{if defined(context) then ("--context " +  '"' + context + '"') else ""} \
      ~{if defined(score_dir) then ("--score-dir " +  '"' + score_dir + '"') else ""} \
      ~{true="--by-sample" false="" by_sample} \
      ~{true="--use-unmapped" false="" use_unmapped} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(observed_output) then ("--observed-output " +  '"' + observed_output + '"') else ""} \
      ~{if defined(output_text_file_simulation) then ("--output " +  '"' + output_text_file_simulation + '"') else ""}
  >>>
  parameter_meta {
    log_level: "Write a log file (--log-level=DEBUG for debug mode, --log-level=INFO for info mode)"
    log: "Path to log file. (accepts \"stdout\")"
    gene_fasta_file: "gene FASTA file from extract_gene_seq.py script"
    mutations: "DNA mutations file"
    bed: "BED file annotation of genes"
    processes: "Number of processes to use. 0 indicates using a single process without using a multiprocessing pool (more means Faster, default: 0)."
    num_permutations: "Number of permutations for null model. p-value precision increases with more permutations (Default: 10000)."
    context: "Number of DNA bases to use as context. 0 indicates no context. 1 indicates only use the mutated base. 1.5 indicates using the base context used in CHASM (http:/ /wiki.chasmsoftware.org/index.php/CHASM_Overview). 2 indicates using the mutated base and the upstream base. 3 indicates using the mutated base and both the upstream and downstream bases. (Default: 1.5)"
    score_dir: "Directory containing score information in pickle files (Default: None)."
    by_sample: "Report counts for observed mutations stratified by the tumor sample"
    use_unmapped: "Use mutations that are not mapped to the the single reference transcript for a gene specified in the bed file indicated by the -b option."
    genome: "Path to the genome fasta file. Required if --use- unmapped flag is used. (Default: None)"
    observed_output: "Output text file of observed results (optional)."
    output_text_file_simulation: "Output text file of simulation results"
  }
}