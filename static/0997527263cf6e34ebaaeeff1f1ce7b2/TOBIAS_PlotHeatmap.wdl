version 1.0

task TOBIASPlotHeatmap {
  input {
    Boolean tfbsTfbs
    Boolean signalsSignals
    Boolean outputOutput
    Boolean plotPlotBoundaries
    Boolean shareShareColorbar
    Boolean tfbsTfbsLabels
    Boolean signalSignalLabels
    Boolean showShowColumns
    Boolean sortSortBy
    Int verbosityVerbosity
  }
  command <<<
    TOBIAS PlotHeatmap \
      ~{true="--TFBS" false="" tfbsTfbs} \
      ~{true="--signals" false="" signalsSignals} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--plot-boundaries" false="" plotPlotBoundaries} \
      ~{true="--share-colorbar" false="" shareShareColorbar} \
      ~{true="--TFBS-labels" false="" tfbsTfbsLabels} \
      ~{true="--signal-labels" false="" signalSignalLabels} \
      ~{true="--show-columns" false="" showShowColumns} \
      ~{true="--sort-by" false="" sortSortBy} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""}
  >>>
}