version 1.0

task GetSuperReadInsertCountsFromReadPlacementFileTwoPasses {
  input {
    File? output_file
    Boolean? fib
    String? number_reads
    Boolean? debug
    String cmdline_parse
    String var_input
  }
  command <<<
    getSuperReadInsertCountsFromReadPlacementFileTwoPasses \
      ~{cmdline_parse} \
      ~{var_input} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""} \
      ~{true="--fib" false="" fib} \
      ~{if defined(number_reads) then ("--number-reads " +  '"' + number_reads + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    output_file: "Output file"
    fib: "Use fibonacci encoding (false)"
    number_reads: "Estimated number of super-reads (1000000)"
    debug: "Output debugging information (false)"
    cmdline_parse: ""
    var_input: ""
  }
}