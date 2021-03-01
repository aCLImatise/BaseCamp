version 1.0

task Snpiphy {
  input {
    Directory? output_directory
    File? reference
    File? input_dir
    File? input_list
    Int? cov_cut_off
    String? prefix
    Int? threads
    Boolean? parallel
    Boolean? single_end
    Boolean? gamma_model
    String? tree_builder
    Boolean? force
    Boolean? no_recombination_filter
    Directory? verbose
  }
  command <<<
    snpiphy \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(input_dir) then ("--input_dir " +  '"' + input_dir + '"') else ""} \
      ~{if defined(input_list) then ("--input_list " +  '"' + input_list + '"') else ""} \
      ~{if defined(cov_cut_off) then ("--cov_cutoff " +  '"' + cov_cut_off + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if (single_end) then "--single_end" else ""} \
      ~{if (gamma_model) then "--gamma_model" else ""} \
      ~{if defined(tree_builder) then ("--tree_builder " +  '"' + tree_builder + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (no_recombination_filter) then "--no_recombination_filter" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/snpiphy:0.5--py_0"
  }
  parameter_meta {
    output_directory: "Path to the output directory. A directory will be\\ncreated if one does not exist."
    reference: "Path to the reference sequence. Only fasta format is\\naccepted currently."
    input_dir: "Path to a directory with your interleaved fastq\\nsequencing reads, single-end sequencing reads (use\\nwith the -s option) or fasta assemblies."
    input_list: "Path to a tab-separated file containing read paths and\\npaired status. Best used when running a combination of\\nsingle-end and paired-end data or if your data is\\nspread across multiple directories. Run\\n'snpiphy_generate_input_list' to generate an example\\nlist."
    cov_cut_off: "Percent coverage of reference sequence (0-100%) used\\nto reject a sample. Samples lower than this threshold\\nwill be excluded from phylogenetic pipeline steps.\\nDefaults to 85%."
    prefix: "Prefix for output files"
    threads: "Number of threads to use for multiprocessing."
    parallel: "Use GNU parallel to run multiple instances of snippy\\n(can speed things up if you have multiple cores\\navailable)"
    single_end: "fastq reads are single end instead of paired-end. Use\\nfor ion torrent or non-paired end illumina data"
    gamma_model: "Use GTRGAMMA model instead of GTRCAT during the\\ngubbins and RAxML tree building steps."
    tree_builder: "Algorithm used for building the phylogenetic tree\\n(default: raxml)"
    force: "Overwrite files in the output directories."
    no_recombination_filter: "Don't filter potential recombination events. Use for\\norganisms that are known undergo low amounts of\\nrecombination."
    verbose: "Increase verbosity on command line output (n.b.\\nverbose output is always saved to snpiphy.log in the\\noutput directory).\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    Directory out_verbose = "${in_verbose}"
  }
}