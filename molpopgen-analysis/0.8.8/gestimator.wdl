version 1.0

task Gestimator {
  input {
    String? write_results_outfile
    Boolean? _verbose_output
    Boolean? max_hits_allowed
    Boolean? remove_gaps_whole
    File? i
  }
  command <<<
    gestimator \
      ~{if defined(write_results_outfile) then ("-o " +  '"' + write_results_outfile + '"') else ""} \
      ~{if (_verbose_output) then "-v" else ""} \
      ~{if (max_hits_allowed) then "-m" else ""} \
      ~{if (remove_gaps_whole) then "-g" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    write_results_outfile: ": write results to outfile"
    _verbose_output: ": get verbose output"
    max_hits_allowed: ": max # of hits allowed per codon (default = 3)"
    remove_gaps_whole: ": remove gaps from the whole aligment before calculating (default = FALSE)"
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}