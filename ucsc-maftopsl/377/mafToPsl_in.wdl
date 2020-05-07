version 1.0

task MafToPslIn.maf {
  input {
    String? queryQuerySrc
    String? targetTargetSrc
    String? inInMaf
    String? outOutPsl
  }
  command <<<
    mafToPsl in.maf \
      ~{queryQuerySrc} \
      ~{targetTargetSrc} \
      ~{inInMaf} \
      ~{outOutPsl}
  >>>
}