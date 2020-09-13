version 1.0

task Bstats {
  input {
    Boolean? _verbose
    Int? _sampling_iterations
    File? output_diff_data
  }
  command <<<
    bstats \
      ~{if (_verbose) then "-v" else ""} \
      ~{if defined(_sampling_iterations) then ("-i " +  '"' + _sampling_iterations + '"') else ""} \
      ~{if defined(output_diff_data) then ("-d " +  '"' + output_diff_data + '"') else ""}
  >>>
  parameter_meta {
    _verbose: ": verbose"
    _sampling_iterations: ": Sampling iterations (100)"
    output_diff_data: ": Output diff data to <file>"
  }
  output {
    File out_stdout = stdout()
    File out_output_diff_data = "${in_output_diff_data}"
  }
}