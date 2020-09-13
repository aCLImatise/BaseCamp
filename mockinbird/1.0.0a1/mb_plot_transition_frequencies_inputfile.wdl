version 1.0

task MbplottransitionfrequenciesInputfile {
  input {
    String? coverage
    String mb_plot_transition_frequencies
  }
  command <<<
    mb_plot_transition_frequencies inputfile \
      ~{mb_plot_transition_frequencies} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""}
  >>>
  parameter_meta {
    coverage: ""
    mb_plot_transition_frequencies: ""
  }
  output {
    File out_stdout = stdout()
  }
}