version 1.0

task Probabilistic2020Oncogene {
  input {
    File? gene_fasta_file
    File? mutations
    File? bed
    Int? processes
    Int? num_iterations
    Int? context
    Directory? score_dir
    File? output_text_file
    Int? stop_criteria
    Int? recurrent
    Int? fraction
    Boolean? unique
    Boolean? use_unmapped
    File? genome
    Int? seed
    String find_evaluates_clustering
  }
  command <<<
    probabilistic2020 oncogene \
      ~{find_evaluates_clustering} \
      ~{if defined(gene_fasta_file) then ("--input " +  '"' + gene_fasta_file + '"') else ""} \
      ~{if defined(mutations) then ("--mutations " +  '"' + mutations + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(num_iterations) then ("--num-iterations " +  '"' + num_iterations + '"') else ""} \
      ~{if defined(context) then ("--context " +  '"' + context + '"') else ""} \
      ~{if defined(score_dir) then ("--score-dir " +  '"' + score_dir + '"') else ""} \
      ~{if defined(output_text_file) then ("--output " +  '"' + output_text_file + '"') else ""} \
      ~{if defined(stop_criteria) then ("--stop-criteria " +  '"' + stop_criteria + '"') else ""} \
      ~{if defined(recurrent) then ("--recurrent " +  '"' + recurrent + '"') else ""} \
      ~{if defined(fraction) then ("--fraction " +  '"' + fraction + '"') else ""} \
      ~{if (unique) then "--unique" else ""} \
      ~{if (use_unmapped) then "--use-unmapped" else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gene_fasta_file: "gene FASTA file from extract_gene_seq.py script"
    mutations: "DNA mutations file (MAF file). Columns can be in any\\norder, but should contain the correct column header\\nnames."
    bed: "BED file annotation of genes"
    processes: "Number of processes to use for parallelization. 0\\nindicates using a single process without using a\\nmultiprocessing pool (more means Faster, default: 0)."
    num_iterations: "Number of iterations for null model. p-value precision\\nincreases with more iterations, however this will also\\nincrease the run time (Default: 100,000)."
    context: "Number of DNA bases to use as context. 0 indicates no\\ncontext. 1 indicates only use the mutated base. 1.5\\nindicates using the base context used in CHASM (http:/\\n/wiki.chasmsoftware.org/index.php/CHASM_Overview). 2\\nindicates using the mutated base and the upstream\\nbase. 3 indicates using the mutated base and both the\\nupstream and downstream bases. (Default: 1.5)"
    score_dir: "Directory containing VEST score information in pickle\\nfiles (Default: None)."
    output_text_file: "Output text file of probabilistic 20/20 results"
    stop_criteria: "Number of iterations more significant then the\\nobserved statistic to stop further computations. This\\ndecreases compute time spent in resolving p-values for\\nnon-significant genes. (Default: 1000)."
    recurrent: "Minimum number of mutations at a position for it to be\\nconsidered a recurrently mutated position (Default:\\n3)."
    fraction: "Fraction of total mutations in a gene. This define the\\nminimumm number of mutations for a position to be\\ndefined as recurrently mutated (Defaul: .02)."
    unique: "Only keep unique mutations for each tumor sample.\\nMutations reported from heterogeneous sources may\\ncontain duplicates, e.g. a tumor sample was sequenced\\ntwice."
    use_unmapped: "Use mutations that are not mapped to the the single\\nreference transcript for a gene specified in the bed\\nfile indicated by the -b option."
    genome: "Path to the genome fasta file. Required if --use-\\nunmapped flag is used. (Default: None)"
    seed: "Specify the seed for the pseudo random number\\ngenerator. By default, the seed is randomly chosen.\\nThe seed will be used for the monte carlo simulations\\n(Default: 101).\\n"
    find_evaluates_clustering: "Find statsitically significant oncogene-like genes. Evaluates clustering of"
  }
  output {
    File out_stdout = stdout()
    File out_output_text_file = "${in_output_text_file}"
  }
}