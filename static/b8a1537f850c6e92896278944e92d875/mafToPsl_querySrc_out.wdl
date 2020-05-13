version 1.0

task MafToPslQuerySrcOut.psl {
  input {
    String? targetTargetSrc
    String? inInMaf
    String? outOutPsl
  }
  command <<<
    mafToPsl querySrc out.psl \
      ~{targetTargetSrc} \
      ~{inInMaf} \
      ~{outOutPsl}
  >>>
}