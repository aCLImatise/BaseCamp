version 1.0

task DeblurBuildDbIndexOUTPUTDIR {
  input {
    String? optionsOptions
    String? refRefFp
    String? outputOutputDir
  }
  command <<<
    deblur build-db-index OUTPUT_DIR \
      ~{optionsOptions} \
      ~{refRefFp} \
      ~{outputOutputDir}
  >>>
}