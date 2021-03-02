version 1.0

task ReseqSeqToIllumina {
  input {
    Boolean? arg_number_threads
    Int? verbosity
    Int? error_mutli_plier
    Boolean? arg_input_file
    Int? ipf_iterations
    Int? ipf_precision
    Boolean? no_indel_errors
    Boolean? no_substitution_errors
    File? arg_output_file
    Boolean? arg_loads_last
    Boolean? arg_stores_probabilities
    String? seed
    Boolean? arg_profile_file
  }
  command <<<
    reseq seqToIllumina \
      ~{if (arg_number_threads) then "-j" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(error_mutli_plier) then ("--errorMutliplier " +  '"' + error_mutli_plier + '"') else ""} \
      ~{if (arg_input_file) then "-i" else ""} \
      ~{if defined(ipf_iterations) then ("--ipfIterations " +  '"' + ipf_iterations + '"') else ""} \
      ~{if defined(ipf_precision) then ("--ipfPrecision " +  '"' + ipf_precision + '"') else ""} \
      ~{if (no_indel_errors) then "--noInDelErrors" else ""} \
      ~{if (no_substitution_errors) then "--noSubstitutionErrors" else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if (arg_loads_last) then "-p" else ""} \
      ~{if (arg_stores_probabilities) then "-P" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (arg_profile_file) then "-s" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/reseq:1.1--py38h56fca86_0"
  }
  parameter_meta {
    arg_number_threads: "[ --threads ] arg (=0)      Number of threads used (0=auto)"
    verbosity: "(=4)           Sets the level of verbosity (4=everything,\\n0=nothing)"
    error_mutli_plier: "(=1)     Divides the original probability of correct\\nbase calls(no substitution error) by this\\nvalue and renormalizes"
    arg_input_file: "[ --input ] arg             Input file (fasta format, gz and bz2\\nsupported) [stdin]"
    ipf_iterations: "(=200)     Maximum number of iterations for iterative\\nproportional fitting"
    ipf_precision: "(=5)        Iterative proportional fitting procedure stops\\nafter reaching this precision (%)"
    no_indel_errors: "Simulate reads without InDel errors"
    no_substitution_errors: "Simulate reads without substitution errors"
    arg_output_file: "[ --output ] arg            Output file (fastq format, gz and bz2\\nsupported) [stdout]"
    arg_loads_last: "[ --probabilitiesIn ] arg   Loads last estimated probabilities and\\ncontinues from there if precision is not met\\n[<statsIn>.ipf]"
    arg_stores_probabilities: "[ --probabilitiesOut ] arg  Stores the probabilities estimated by\\niterative proportional fitting\\n[<probabilitiesIn>]"
    seed: "Seed used for simulation, if none is given\\nrandom seed will be used"
    arg_profile_file: "[ --statsIn ] arg           Profile file that contains the statistics used\\nfor simulation\\n"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
  }
}