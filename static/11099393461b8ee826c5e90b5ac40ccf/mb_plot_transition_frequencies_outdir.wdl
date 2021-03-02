version 1.0

task MbplottransitionfrequenciesOutdir {
  input {
    String? coverage
    String mb_plot_transition_frequencies
  }
  command <<<
    mb_plot_transition_frequencies outdir \
      ~{mb_plot_transition_frequencies} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    coverage: ""
    mb_plot_transition_frequencies: ""
  }
  output {
    File out_stdout = stdout()
  }
}