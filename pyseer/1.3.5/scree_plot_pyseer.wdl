version 1.0

task ScreePlotPyseer {
  input {
    Int maxMaxDimensions
    String outputOutput
    String? distancesDistances
  }
  command <<<
    scree_plot_pyseer \
      ~{distancesDistances} \
      ~{if defined(maxMaxDimensions) then ("--max-dimensions " +  '"' + maxMaxDimensions + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}