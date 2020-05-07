version 1.0

task MafToPslOut.psl {
  input {
    String? queryQuerySrc
    String? targetTargetSrc
    String? inInMaf
    String? outOutPsl
  }
  command <<<
    mafToPsl out.psl \
      ~{queryQuerySrc} \
      ~{targetTargetSrc} \
      ~{inInMaf} \
      ~{outOutPsl}
  >>>
}