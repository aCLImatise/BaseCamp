version 1.0

task DynalignDotPlotDynalign save file {
  input {
    String? outputOutputFile
  }
  command <<<
    DynalignDotPlot Dynalign save file \
      ~{outputOutputFile}
  >>>
}