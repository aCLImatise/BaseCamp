version 1.0

task Probabilistic2020Hotmaps1d {
  input {
    String? gene_fasta_file
    String? mutations
    String? bed
    String? processes
    String? num_iterations
    String? context
    String? output_text_file
    String? stop_criteria
    String? window
    Boolean? report_index
    String? null_distr_dir
    Boolean? unique
    Boolean? use_unmapped
    String? genome
    String? seed
  }
  command <<<
    probabilistic2020 hotmaps1d \
      ~{if defined(gene_fasta_file) then ("--input " +  '"' + gene_fasta_file + '"') else ""} \
      ~{if defined(mutations) then ("--mutations " +  '"' + mutations + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(num_iterations) then ("--num-iterations " +  '"' + num_iterations + '"') else ""} \
      ~{if defined(context) then ("--context " +  '"' + context + '"') else ""} \
      ~{if defined(output_text_file) then ("--output " +  '"' + output_text_file + '"') else ""} \
      ~{if defined(stop_criteria) then ("--stop-criteria " +  '"' + stop_criteria + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{true="--report-index" false="" report_index} \
      ~{if defined(null_distr_dir) then ("--null-distr-dir " +  '"' + null_distr_dir + '"') else ""} \
      ~{true="--unique" false="" unique} \
      ~{true="--use-unmapped" false="" use_unmapped} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    gene_fasta_file: "gene FASTA file from extract_gene_seq.py script"
    mutations: "DNA mutations file (MAF file). Columns can be in any order, but should contain the correct column header names."
    bed: "BED file annotation of genes"
    processes: "Number of processes to use for parallelization. 0 indicates using a single process without using a multiprocessing pool (more means Faster, default: 0)."
    num_iterations: "Number of iterations for null model. p-value precision increases with more iterations, however this will also increase the run time (Default: 100,000)."
    context: "Number of DNA bases to use as context. 0 indicates no context. 1 indicates only use the mutated base. 1.5 indicates using the base context used in CHASM (http:/ /wiki.chasmsoftware.org/index.php/CHASM_Overview). 2 indicates using the mutated base and the upstream base. 3 indicates using the mutated base and both the upstream and downstream bases. (Default: 1.5)"
    output_text_file: "Output text file of probabilistic 20/20 results"
    stop_criteria: "Number of iterations more significant then the observed statistic to stop further computations. This decreases compute time spent in resolving p-values for non-significant genes. (Default: 1000)."
    window: "Sequence window size for HotMAPS 1D algorithm by number of codons (Default: 3)"
    report_index: "Flag for reporting index (row number, starts at zero) in associated mutation file"
    null_distr_dir: "Path to directory to save empirical null distribution"
    unique: "Only keep unique mutations for each tumor sample. Mutations reported from heterogeneous sources may contain duplicates, e.g. a tumor sample was sequenced twice."
    use_unmapped: "Use mutations that are not mapped to the the single reference transcript for a gene specified in the bed file indicated by the -b option."
    genome: "Path to the genome fasta file. Required if --use- unmapped flag is used. (Default: None)"
    seed: "Specify the seed for the pseudo random number generator. By default, the seed is randomly chosen. The seed will be used for the monte carlo simulations (Default: 101)."
  }
}