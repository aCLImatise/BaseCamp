version 1.0

task SimulateNonSilentRatio {
  input {
    File? log_level
    File? log
    File? gene_fasta_file
    File? mutations
    File? bed
    Int? processes
    Int? num_permutations
    Int? context
    Directory? score_dir
    Boolean? by_sample
    Boolean? use_unmapped
    File? genome
    File? observed_output
    File? output_text_file_simulation
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
      ~{if (by_sample) then "--by-sample" else ""} \
      ~{if (use_unmapped) then "--use-unmapped" else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(observed_output) then ("--observed-output " +  '"' + observed_output + '"') else ""} \
      ~{if defined(output_text_file_simulation) then ("--output " +  '"' + output_text_file_simulation + '"') else ""}
  >>>
  parameter_meta {
    log_level: "Write a log file (--log-level=DEBUG for debug mode,\\n--log-level=INFO for info mode)"
    log: "Path to log file. (accepts \\\"stdout\\\")"
    gene_fasta_file: "gene FASTA file from extract_gene_seq.py script"
    mutations: "DNA mutations file"
    bed: "BED file annotation of genes"
    processes: "Number of processes to use. 0 indicates using a single\\nprocess without using a multiprocessing pool (more\\nmeans Faster, default: 0)."
    num_permutations: "Number of permutations for null model. p-value\\nprecision increases with more permutations (Default:\\n10000)."
    context: "Number of DNA bases to use as context. 0 indicates no\\ncontext. 1 indicates only use the mutated base. 1.5\\nindicates using the base context used in CHASM (http:/\\n/wiki.chasmsoftware.org/index.php/CHASM_Overview). 2\\nindicates using the mutated base and the upstream\\nbase. 3 indicates using the mutated base and both the\\nupstream and downstream bases. (Default: 1.5)"
    score_dir: "Directory containing score information in pickle files\\n(Default: None)."
    by_sample: "Report counts for observed mutations stratified by the\\ntumor sample"
    use_unmapped: "Use mutations that are not mapped to the the single\\nreference transcript for a gene specified in the bed\\nfile indicated by the -b option."
    genome: "Path to the genome fasta file. Required if --use-\\nunmapped flag is used. (Default: None)"
    observed_output: "Output text file of observed results (optional)."
    output_text_file_simulation: "Output text file of simulation results\\n"
  }
  output {
    File out_stdout = stdout()
    File out_observed_output = "${in_observed_output}"
    File out_output_text_file_simulation = "${in_output_text_file_simulation}"
  }
}