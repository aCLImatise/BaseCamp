version 1.0

task MbPlotTransitionFrequenciesPrefix {
  input {
    String? coverage
    String mb_plot_transition_frequencies
  }
  command <<<
    mb-plot-transition-frequencies prefix \
      ~{mb_plot_transition_frequencies} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""}
  >>>
  parameter_meta {
    coverage: ""
    mb_plot_transition_frequencies: ""
  }
}