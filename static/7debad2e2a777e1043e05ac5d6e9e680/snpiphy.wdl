version 1.0

task Snpiphy {
  input {
    File? fast_q_dir
    Directory? output_directory
    File? reference
    Int? cov_cut_off
    String? prefix
    Int? threads
    Boolean? parallel
    Boolean? single_end
    Boolean? gamma_model
    String? tree_builder
    Boolean? force
    Directory? verbose
  }
  command <<<
    snpiphy \
      ~{if defined(fast_q_dir) then ("--fastq-dir " +  '"' + fast_q_dir + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(cov_cut_off) then ("--cov-cutoff " +  '"' + cov_cut_off + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if (single_end) then "--single_end" else ""} \
      ~{if (gamma_model) then "--gamma_model" else ""} \
      ~{if defined(tree_builder) then ("--tree_builder " +  '"' + tree_builder + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q_dir: "Path to a directory with your interleaved fastq\\nsequencing reads or fasta assemblies."
    output_directory: "Path to the output directory. A directory will be\\ncreated if one does not exist."
    reference: "Path to the reference sequence. Only fasta format is\\naccepted currently."
    cov_cut_off: "Percent coverage of reference sequence (0-100%) used\\nto reject a sample. Samples lower than this threshold\\nwill be excluded from phylogenetic pipeline steps.\\nDefaults to 85%."
    prefix: "Prefix for output files"
    threads: "Number of threads to use for multiprocessing."
    parallel: "Use GNU parallel to run multiple instances of snippy\\n(can speed things up if you have multiple cores\\navailable)"
    single_end: "fastq reads are single end instead of paired-end. Use\\nfor ion torrent or non-paired end illumina data"
    gamma_model: "Use GTRGAMMA model instead of GTRCAT during the\\ngubbins and RAxML tree building steps."
    tree_builder: "Algorithm used for building the phylogenetic tree\\n(default: raxml)"
    force: "Overwrite files in the output directories."
    verbose: "Increase verbosity on command line output (n.b.\\nverbose output is always saved to snpiphy.log in the\\noutput directory).\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    Directory out_verbose = "${in_verbose}"
  }
}