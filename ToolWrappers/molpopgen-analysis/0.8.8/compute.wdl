version 1.0

task Compute {
  input {
    String? write_results_outfile
    String? use_nth_sequence
    Boolean? use_total_segregating
    Boolean? verbose_progress_reporting
    Boolean? _pretty_output
    File? i
  }
  command <<<
    compute \
      ~{if defined(write_results_outfile) then ("-o " +  '"' + write_results_outfile + '"') else ""} \
      ~{if defined(use_nth_sequence) then ("-O " +  '"' + use_nth_sequence + '"') else ""} \
      ~{if (use_total_segregating) then "-n" else ""} \
      ~{if (verbose_progress_reporting) then "-v" else ""} \
      ~{if (_pretty_output) then "-V" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    write_results_outfile: ": write results to outfile"
    use_nth_sequence: ": use the nth sequence in the data as an outgroup"
    use_total_segregating: ": use the total # of segregating sites, rather than # of mutations"
    verbose_progress_reporting: ": verbose progress reporting to standard error"
    _pretty_output: ": pretty output"
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}