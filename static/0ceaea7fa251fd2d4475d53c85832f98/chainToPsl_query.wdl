version 1.0

task ChainToPslQuery.lst {
  input {
    String? inInChain
    String? tTSizes
    String? qQSizes
    String? targetTargetLst
    String? queryQueryLst
    String? outOutPsl
  }
  command <<<
    chainToPsl query.lst \
      ~{inInChain} \
      ~{tTSizes} \
      ~{qQSizes} \
      ~{targetTargetLst} \
      ~{queryQueryLst} \
      ~{outOutPsl}
  >>>
}