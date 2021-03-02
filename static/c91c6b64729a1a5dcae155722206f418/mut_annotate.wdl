version 1.0

task MutAnnotate {
  input {
    File? log_level
    File? log
    Boolean? verbose
    File? gene_fasta_file
    File? mutations
    File? bed
    Directory? score_dir
    Int? processes
    Int? num_iterations
    Int? context
    Boolean? summary
    Boolean? maf
    Boolean? use_unmapped
    File? genome
    Int? recurrent
    Int? fraction
    Boolean? unique
    Boolean? drop_silent
    Boolean? restrict_genes
    Int? seed
    File? output_text_file
  }
  command <<<
    mut_annotate \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(gene_fasta_file) then ("--input " +  '"' + gene_fasta_file + '"') else ""} \
      ~{if defined(mutations) then ("--mutations " +  '"' + mutations + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(score_dir) then ("--score-dir " +  '"' + score_dir + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(num_iterations) then ("--num-iterations " +  '"' + num_iterations + '"') else ""} \
      ~{if defined(context) then ("--context " +  '"' + context + '"') else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if (maf) then "--maf" else ""} \
      ~{if (use_unmapped) then "--use-unmapped" else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(recurrent) then ("--recurrent " +  '"' + recurrent + '"') else ""} \
      ~{if defined(fraction) then ("--fraction " +  '"' + fraction + '"') else ""} \
      ~{if (unique) then "--unique" else ""} \
      ~{if (drop_silent) then "--drop-silent" else ""} \
      ~{if (restrict_genes) then "--restrict-genes" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(output_text_file) then ("--output " +  '"' + output_text_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    log_level: "Write a log file (--log-level=DEBUG for debug mode,\\n--log-level=INFO for info mode)"
    log: "Path to log file. (accepts \\\"stdout\\\")"
    verbose: "Flag for more verbose log output"
    gene_fasta_file: "gene FASTA file from extract_gene_seq script"
    mutations: "DNA mutations file (MAF file)"
    bed: "BED file annotation of genes"
    score_dir: "Directory containing pre-compute score information in\\nfor VEST and evolutionary conservation in pickle\\nformat (Default: None)."
    processes: "Number of processes to use. 0 indicates using a single\\nprocess without using a multiprocessing pool (more\\nmeans Faster, default: 0)."
    num_iterations: "Number of iterations for null model simulations. If\\nzero is specified then output represents a result from\\nactually observed mutations (provided by -m\\nparameter), otherwise results will be from simulated\\nmutations. (Default: 0)."
    context: "Number of DNA bases to use as context. 0 indicates no\\ncontext. 1 indicates only use the mutated base. 1.5\\nindicates using the base context used in CHASM (http:/\\n/wiki.chasmsoftware.org/index.php/CHASM_Overview). 2\\nindicates using the mutated base and the upstream\\nbase. 3 indicates using the mutated base and both the\\nupstream and downstream bases. (Default: 1.5)"
    summary: "Flag for saving results as summarized features used\\n(Default: True)."
    maf: "Flag for saving results in MAF format (Default:\\nFalse)."
    use_unmapped: "Use mutations that are not mapped to the the single\\nreference transcript for a gene specified in the bed\\nfile indicated by the -b option."
    genome: "Path to the genome fasta file. Required if --use-\\nunmapped flag is used. (Default: None)"
    recurrent: "Minimum number of mutations at a position for it to be\\nconsidered a recurrently mutated position (Default:\\n3)."
    fraction: "Fraction of total mutations in a gene. This define the\\nminimumm number of mutations for a position to be\\ndefined as recurrently mutated (Default: .02)."
    unique: "Only keep unique mutations for each tumor\\nsample.Mutations reproted from heterogeneous sources\\nmay contain duplicates, e.g. a tumor sample was\\nsequenced twice."
    drop_silent: "Drop silent mutations in simulations. Useful if\\nprovided mutations don't include silent mutations"
    restrict_genes: "Important option for gene panels. Restrict simulated\\nindels to only occur within the same set of genes as\\nprovied in the mutation file."
    seed: "Specify the seed for the pseudo random number\\ngenerator. By default, the seed is randomly chosen\\nbased. The seed will be used for the monte carlo\\nsimulations (Default: 101)."
    output_text_file: "Output text file of results\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_text_file = "${in_output_text_file}"
  }
}