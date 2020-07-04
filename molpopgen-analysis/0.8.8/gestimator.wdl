version 1.0

task Gestimator {
  input {
    String? write_results_outfile
    Boolean? get_verbose_output
    Boolean? max_hits_allowed
    Boolean? remove_gaps_whole
    String? i
  }
  command <<<
    gestimator \
      ~{if defined(write_results_outfile) then ("-o " +  '"' + write_results_outfile + '"') else ""} \
      ~{true="-v" false="" get_verbose_output} \
      ~{true="-m" false="" max_hits_allowed} \
      ~{true="-g" false="" remove_gaps_whole} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    write_results_outfile: ": write results to outfile"
    get_verbose_output: ": get verbose output"
    max_hits_allowed: ": max # of hits allowed per codon (default = 3)"
    remove_gaps_whole: ": remove gaps from the whole aligment before calculating (default = FALSE)"
    i: ""
  }
}