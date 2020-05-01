version 1.0

task PslRecalcMatch {
  input {
    String ignoreIgnoreQMissing
    String? inInPsl
    String? targetTargetSeq
    String? queryQuerySeq
    String? outOutPsl
  }
  command <<<
    pslRecalcMatch \
      ~{inInPsl} \
      ~{if defined(ignoreIgnoreQMissing) then ("-ignoreQMissing " +  '"' + ignoreIgnoreQMissing + '"') else ""} \
      ~{targetTargetSeq} \
      ~{queryQuerySeq} \
      ~{outOutPsl}
  >>>
}