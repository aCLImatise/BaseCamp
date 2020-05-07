version 1.0

task MafToPslQuerySrcTargetSrcIn.maf {
  input {
    String? outOutPsl
  }
  command <<<
    mafToPsl querySrc targetSrc in.maf \
      ~{outOutPsl}
  >>>
}