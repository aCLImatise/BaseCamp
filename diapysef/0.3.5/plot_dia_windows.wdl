version 1.0

task PlotDiaWindows.pyPrecursorMap {
  input {
    String? windowWindowFile
    String? precursorPrecursorMap
  }
  command <<<
    plot_dia_windows.py precursor_map \
      ~{windowWindowFile} \
      ~{precursorPrecursorMap}
  >>>
}