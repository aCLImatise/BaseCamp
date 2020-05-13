version 1.0

task DeblurBuildDbIndexREFFP {
  input {
    String? optionsOptions
    String? refRefFp
    String? outputOutputDir
  }
  command <<<
    deblur build-db-index REF_FP \
      ~{optionsOptions} \
      ~{refRefFp} \
      ~{outputOutputDir}
  >>>
}