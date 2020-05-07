version 1.0

task PanarooPlotAbundance {
  input {
    String graphGraphType
    String nNBoot
    String inputInput
    String outOutDir
  }
  command <<<
    panaroo-plot-abundance \
      ~{if defined(graphGraphType) then ("--graph_type " +  '"' + graphGraphType + '"') else ""} \
      ~{if defined(nNBoot) then ("--nboot " +  '"' + nNBoot + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""}
  >>>
}