version 1.0

task IuVisualizePlotDicts {
  input {
    String destDest
    String titleTitle
    Boolean splitSplitTiles
    String? plotPlotDict
  }
  command <<<
    iu-visualize-plot-dicts \
      ~{plotPlotDict} \
      ~{if defined(destDest) then ("--dest " +  '"' + destDest + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{true="--split-tiles" false="" splitSplitTiles}
  >>>
}