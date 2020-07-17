version 1.0

task MutAnnotate {
  input {
    String? log_level
    String? log
    Boolean? verbose
    String? gene_fasta_file
    String? mutations
    String? bed
    String? score_dir
    String? processes
    String? num_iterations
    String? context
    Boolean? summary
    Boolean? maf
    Boolean? use_unmapped
    String? genome
    String? recurrent
    String? fraction
    Boolean? unique
    Boolean? drop_silent
    Boolean? restrict_genes
    String? seed
    String? output_text_file
  }
  command <<<
    mut_annotate \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(gene_fasta_file) then ("--input " +  '"' + gene_fasta_file + '"') else ""} \
      ~{if defined(mutations) then ("--mutations " +  '"' + mutations + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(score_dir) then ("--score-dir " +  '"' + score_dir + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(num_iterations) then ("--num-iterations " +  '"' + num_iterations + '"') else ""} \
      ~{if defined(context) then ("--context " +  '"' + context + '"') else ""} \
      ~{true="--summary" false="" summary} \
      ~{true="--maf" false="" maf} \
      ~{true="--use-unmapped" false="" use_unmapped} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(recurrent) then ("--recurrent " +  '"' + recurrent + '"') else ""} \
      ~{if defined(fraction) then ("--fraction " +  '"' + fraction + '"') else ""} \
      ~{true="--unique" false="" unique} \
      ~{true="--drop-silent" false="" drop_silent} \
      ~{true="--restrict-genes" false="" restrict_genes} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(output_text_file) then ("--output " +  '"' + output_text_file + '"') else ""}
  >>>
  parameter_meta {
    log_level: "Write a log file (--log-level=DEBUG for debug mode, --log-level=INFO for info mode)"
    log: "Path to log file. (accepts \"stdout\")"
    verbose: "Flag for more verbose log output"
    gene_fasta_file: "gene FASTA file from extract_gene_seq script"
    mutations: "DNA mutations file (MAF file)"
    bed: "BED file annotation of genes"
    score_dir: "Directory containing pre-compute score information in for VEST and evolutionary conservation in pickle format (Default: None)."
    processes: "Number of processes to use. 0 indicates using a single process without using a multiprocessing pool (more means Faster, default: 0)."
    num_iterations: "Number of iterations for null model simulations. If zero is specified then output represents a result from actually observed mutations (provided by -m parameter), otherwise results will be from simulated mutations. (Default: 0)."
    context: "Number of DNA bases to use as context. 0 indicates no context. 1 indicates only use the mutated base. 1.5 indicates using the base context used in CHASM (http:/ /wiki.chasmsoftware.org/index.php/CHASM_Overview). 2 indicates using the mutated base and the upstream base. 3 indicates using the mutated base and both the upstream and downstream bases. (Default: 1.5)"
    summary: "Flag for saving results as summarized features used (Default: True)."
    maf: "Flag for saving results in MAF format (Default: False)."
    use_unmapped: "Use mutations that are not mapped to the the single reference transcript for a gene specified in the bed file indicated by the -b option."
    genome: "Path to the genome fasta file. Required if --use- unmapped flag is used. (Default: None)"
    recurrent: "Minimum number of mutations at a position for it to be considered a recurrently mutated position (Default: 3)."
    fraction: "Fraction of total mutations in a gene. This define the minimumm number of mutations for a position to be defined as recurrently mutated (Default: .02)."
    unique: "Only keep unique mutations for each tumor sample.Mutations reproted from heterogeneous sources may contain duplicates, e.g. a tumor sample was sequenced twice."
    drop_silent: "Drop silent mutations in simulations. Useful if provided mutations don't include silent mutations"
    restrict_genes: "Important option for gene panels. Restrict simulated indels to only occur within the same set of genes as provied in the mutation file."
    seed: "Specify the seed for the pseudo random number generator. By default, the seed is randomly chosen based. The seed will be used for the monte carlo simulations (Default: 101)."
    output_text_file: "Output text file of results"
  }
}