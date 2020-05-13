version 1.0

task PoretoolsYieldPlot {
  input {
    Boolean quietQuiet
    String saveSaveAs
    String plotPlotType
    Boolean themeThemeBw
    Int skipSkip
    String savedSavedF
    File? filesFiles
  }
  command <<<
    poretools yield_plot \
      ~{filesFiles} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(saveSaveAs) then ("--saveas " +  '"' + saveSaveAs + '"') else ""} \
      ~{if defined(plotPlotType) then ("--plot-type " +  '"' + plotPlotType + '"') else ""} \
      ~{true="--theme-bw" false="" themeThemeBw} \
      ~{if defined(skipSkip) then ("--skip " +  '"' + skipSkip + '"') else ""} \
      ~{if defined(savedSavedF) then ("--savedf " +  '"' + savedSavedF + '"') else ""}
  >>>
}