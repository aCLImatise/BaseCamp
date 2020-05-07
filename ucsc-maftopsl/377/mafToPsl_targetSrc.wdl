version 1.0

task MafToPslTargetSrc {
  input {
    String? queryQuerySrc
    String? targetTargetSrc
    String? inInMaf
    String? outOutPsl
  }
  command <<<
    mafToPsl targetSrc \
      ~{queryQuerySrc} \
      ~{targetTargetSrc} \
      ~{inInMaf} \
      ~{outOutPsl}
  >>>
}