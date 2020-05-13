version 1.0

task MafToPslQuerySrcIn.maf {
  input {
    String? targetTargetSrc
    String? inInMaf
    String? outOutPsl
  }
  command <<<
    mafToPsl querySrc in.maf \
      ~{targetTargetSrc} \
      ~{inInMaf} \
      ~{outOutPsl}
  >>>
}