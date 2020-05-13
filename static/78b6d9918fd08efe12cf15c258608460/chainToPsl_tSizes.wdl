version 1.0

task ChainToPslTSizes {
  input {
    String? inInChain
    String? tTSizes
    String? qQSizes
    String? targetTargetLst
    String? queryQueryLst
    String? outOutPsl
  }
  command <<<
    chainToPsl tSizes \
      ~{inInChain} \
      ~{tTSizes} \
      ~{qQSizes} \
      ~{targetTargetLst} \
      ~{queryQueryLst} \
      ~{outOutPsl}
  >>>
}