version 1.0

task RunCalling {
  input {
    String? prefix_output_files
    String? prefix_bwa_index
    Int? number_of_threads
    Boolean? options
    Boolean? more_options
  }
  command <<<
    run-calling \
      ~{if defined(prefix_output_files) then ("-o " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(prefix_bwa_index) then ("-b " +  '"' + prefix_bwa_index + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    prefix_output_files: "prefix of output files [inferred from input]"
    prefix_bwa_index: "prefix for BWA index [same as <indexed-ref>]"
    number_of_threads: "number of threads [4]"
    options: ""
    more_options: ""
  }
}