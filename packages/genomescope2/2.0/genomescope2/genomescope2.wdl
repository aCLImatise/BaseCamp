version 1.0

task Genomescope2 {
  input {
    File? input_histogram_file
    Directory? output_directory_name
    Int? ploidy
    Int? km_er_length
    String? name_prefix
    String? k_merco_v
    Int? max_k_merco_v
    Boolean? verbose
    Boolean? no_unique_sequence
    String? topology
    String? initial_repetitiveness
    String? initial_hetero_zygo_sities
    Int? transform_exp
    Boolean? testing
    Boolean? trace_flag
    Int? num_rounds
    String parameters
  }
  command <<<
    genomescope2 \
      ~{parameters} \
      ~{if defined(input_histogram_file) then ("--input " +  '"' + input_histogram_file + '"') else ""} \
      ~{if defined(output_directory_name) then ("--output " +  '"' + output_directory_name + '"') else ""} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""} \
      ~{if defined(km_er_length) then ("--kmer_length " +  '"' + km_er_length + '"') else ""} \
      ~{if defined(name_prefix) then ("--name_prefix " +  '"' + name_prefix + '"') else ""} \
      ~{if defined(k_merco_v) then ("--kmercov " +  '"' + k_merco_v + '"') else ""} \
      ~{if defined(max_k_merco_v) then ("--max_kmercov " +  '"' + max_k_merco_v + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (no_unique_sequence) then "--no_unique_sequence" else ""} \
      ~{if defined(topology) then ("--topology " +  '"' + topology + '"') else ""} \
      ~{if defined(initial_repetitiveness) then ("--initial_repetitiveness " +  '"' + initial_repetitiveness + '"') else ""} \
      ~{if defined(initial_hetero_zygo_sities) then ("--initial_heterozygosities " +  '"' + initial_hetero_zygo_sities + '"') else ""} \
      ~{if defined(transform_exp) then ("--transform_exp " +  '"' + transform_exp + '"') else ""} \
      ~{if (testing) then "--testing" else ""} \
      ~{if (trace_flag) then "--trace_flag" else ""} \
      ~{if defined(num_rounds) then ("--num_rounds " +  '"' + num_rounds + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/genomescope2:2.0--r40_0"
  }
  parameter_meta {
    input_histogram_file: "input histogram file"
    output_directory_name: "output directory name"
    ploidy: "ploidy (1, 2, 3, 4, 5, or 6) for model to use [default\\n2]"
    km_er_length: "kmer length used to calculate kmer spectra [default\\n21]"
    name_prefix: "optional name_prefix for output files"
    k_merco_v: "optional initial kmercov estimate for model to use"
    max_k_merco_v: "optional maximum kmer coverage threshold (kmers with\\ncoverage greater than max_kmercov are ignored by the\\nmodel)"
    verbose: "optional flag to print messages during execution"
    no_unique_sequence: "optional flag to turn off yellow unique sequence line\\nin plots"
    topology: "ADVANCED: flag for topology for model to use"
    initial_repetitiveness: "ADVANCED: flag to set initial value for repetitiveness"
    initial_hetero_zygo_sities: "ADVANCED: flag to set initial values for nucleotide\\nheterozygosity rates"
    transform_exp: "ADVANCED: parameter for the exponent when fitting a\\ntransformed (x**transform_exp*y vs. x) kmer histogram\\n[default 1]"
    testing: "ADVANCED: flag to create testing.tsv file with model"
    trace_flag: "ADVANCED: flag to turn on printing of iteration\\nprogress of nlsLM function"
    num_rounds: "ADVANCED: parameter for the number of optimization\\nrounds\\n"
    parameters: "--true_params TRUE_PARAMS"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_name = "${in_output_directory_name}"
  }
}