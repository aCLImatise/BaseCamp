version 1.0

task DeblurBuildDbIndexOPTIONSOUTPUTDIR {
  input {
    String? refRefFp
    String? outputOutputDir
  }
  command <<<
    deblur build-db-index OPTIONS OUTPUT_DIR \
      ~{refRefFp} \
      ~{outputOutputDir}
  >>>
}