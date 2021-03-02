version 1.0

task Kaijup {
  input {
    File? name_database_file
    File? name_input_file
    File? name_specified_output
    Int? number_parallel_threads
    String? run_mode_default
    Int? number_mismatches_allowed
    Int? minimum_match_length
    Int? minimum_match_score
    Float? minimum_evalue_greedy
    Boolean? enable_seg_low
    Boolean? disable_seg_low
    Boolean? enable_verbose_output
  }
  command <<<
    kaijup \
      ~{if defined(name_database_file) then ("-f " +  '"' + name_database_file + '"') else ""} \
      ~{if defined(name_input_file) then ("-i " +  '"' + name_input_file + '"') else ""} \
      ~{if defined(name_specified_output) then ("-o " +  '"' + name_specified_output + '"') else ""} \
      ~{if defined(number_parallel_threads) then ("-z " +  '"' + number_parallel_threads + '"') else ""} \
      ~{if defined(run_mode_default) then ("-a " +  '"' + run_mode_default + '"') else ""} \
      ~{if defined(number_mismatches_allowed) then ("-e " +  '"' + number_mismatches_allowed + '"') else ""} \
      ~{if defined(minimum_match_length) then ("-m " +  '"' + minimum_match_length + '"') else ""} \
      ~{if defined(minimum_match_score) then ("-s " +  '"' + minimum_match_score + '"') else ""} \
      ~{if defined(minimum_evalue_greedy) then ("-E " +  '"' + minimum_evalue_greedy + '"') else ""} \
      ~{if (enable_seg_low) then "-x" else ""} \
      ~{if (disable_seg_low) then "-X" else ""} \
      ~{if (enable_verbose_output) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/kaiju:1.7.4--h8b12597_0"
  }
  parameter_meta {
    name_database_file: "Name of database file (.fmi) file"
    name_input_file: "Name of input file containing reads in FASTA or FASTQ format"
    name_specified_output: "Name of output file. If not specified, output will be printed to STDOUT"
    number_parallel_threads: "Number of parallel threads for classification (default: 1)"
    run_mode_default: "Run mode, either \\\"mem\\\"  or \\\"greedy\\\" (default: greedy)"
    number_mismatches_allowed: "Number of mismatches allowed in Greedy mode (default: 3)"
    minimum_match_length: "Minimum match length (default: 11)"
    minimum_match_score: "Minimum match score in Greedy mode (default: 65)"
    minimum_evalue_greedy: "Minimum E-value in Greedy mode"
    enable_seg_low: "Enable SEG low complexity filter (enabled by default)"
    disable_seg_low: "Disable SEG low complexity filter"
    enable_verbose_output: "Enable verbose output."
  }
  output {
    File out_stdout = stdout()
    File out_name_specified_output = "${in_name_specified_output}"
  }
}