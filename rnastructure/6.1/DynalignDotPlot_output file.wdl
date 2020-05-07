version 1.0

task DynalignDotPlotOutput file {
  input {
    String? dynDynAlignSaveFile
    String? outputOutputFile
  }
  command <<<
    DynalignDotPlot output file \
      ~{dynDynAlignSaveFile} \
      ~{outputOutputFile}
  >>>
}