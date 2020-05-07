version 1.0

task InteropPlotQscoreHeatmap {
  input {
    Boolean filterFilterByLane
    Boolean filterFilterByChannel
    Boolean filterFilterByBase
    Boolean filterFilterBySurface
    Boolean filterFilterByRead
    Boolean filterFilterByCycle
    Boolean filterFilterByTileNumber
    Boolean filterFilterBySwath
    Boolean filterFilterBySection
  }
  command <<<
    interop_plot_qscore_heatmap \
      ~{true="--filter-by-lane" false="" filterFilterByLane} \
      ~{true="--filter-by-channel" false="" filterFilterByChannel} \
      ~{true="--filter-by-base" false="" filterFilterByBase} \
      ~{true="--filter-by-surface" false="" filterFilterBySurface} \
      ~{true="--filter-by-read" false="" filterFilterByRead} \
      ~{true="--filter-by-cycle" false="" filterFilterByCycle} \
      ~{true="--filter-by-tile-number" false="" filterFilterByTileNumber} \
      ~{true="--filter-by-swath" false="" filterFilterBySwath} \
      ~{true="--filter-by-section" false="" filterFilterBySection}
  >>>
}