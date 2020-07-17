version 1.0

task Snpiphy {
  input {
    String? fast_q_dir
    String? output_directory
    String? reference
    String? cov_cut_off
    String? prefix
    String? threads
    Boolean? parallel
    Boolean? single_end
    Boolean? gamma_model
    String? tree_builder
    Boolean? force
    Boolean? verbose
  }
  command <<<
    snpiphy \
      ~{if defined(fast_q_dir) then ("--fastq-dir " +  '"' + fast_q_dir + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(cov_cut_off) then ("--cov-cutoff " +  '"' + cov_cut_off + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--parallel" false="" parallel} \
      ~{true="--single_end" false="" single_end} \
      ~{true="--gamma_model" false="" gamma_model} \
      ~{if defined(tree_builder) then ("--tree_builder " +  '"' + tree_builder + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    fast_q_dir: "Path to a directory with your interleaved fastq sequencing reads or fasta assemblies."
    output_directory: "Path to the output directory. A directory will be created if one does not exist."
    reference: "Path to the reference sequence. Only fasta format is accepted currently."
    cov_cut_off: "Percent coverage of reference sequence (0-100%) used to reject a sample. Samples lower than this threshold will be excluded from phylogenetic pipeline steps. Defaults to 85%."
    prefix: "Prefix for output files"
    threads: "Number of threads to use for multiprocessing."
    parallel: "Use GNU parallel to run multiple instances of snippy (can speed things up if you have multiple cores available)"
    single_end: "fastq reads are single end instead of paired-end. Use for ion torrent or non-paired end illumina data"
    gamma_model: "Use GTRGAMMA model instead of GTRCAT during the gubbins and RAxML tree building steps."
    tree_builder: "Algorithm used for building the phylogenetic tree (default: raxml)"
    force: "Overwrite files in the output directories."
    verbose: "Increase verbosity on command line output (n.b. verbose output is always saved to snpiphy.log in the output directory)."
  }
}