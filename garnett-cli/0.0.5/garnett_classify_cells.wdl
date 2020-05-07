version 1.0

task GarnettClassifyCells.R {
  input {
    Boolean verboseVerbose
    String plotPlotOutputPath
    String cdsCdsOutputObj
  }
  command <<<
    garnett_classify_cells.R \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(plotPlotOutputPath) then ("--plot-output-path " +  '"' + plotPlotOutputPath + '"') else ""} \
      ~{if defined(cdsCdsOutputObj) then ("--cds-output-obj " +  '"' + cdsCdsOutputObj + '"') else ""}
  >>>
}