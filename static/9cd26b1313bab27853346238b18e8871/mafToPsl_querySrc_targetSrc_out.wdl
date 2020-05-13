version 1.0

task MafToPslQuerySrcTargetSrcOut.psl {
  input {
    String? inInMaf
    String? outOutPsl
  }
  command <<<
    mafToPsl querySrc targetSrc out.psl \
      ~{inInMaf} \
      ~{outOutPsl}
  >>>
}