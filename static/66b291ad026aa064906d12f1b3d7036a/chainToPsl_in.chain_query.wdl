version 1.0

task ChainToPslIn.chainQuery.lst {
  input {
    String? tTSizes
    String? qQSizes
    String? targetTargetLst
    String? queryQueryLst
    String? outOutPsl
  }
  command <<<
    chainToPsl in.chain query.lst \
      ~{tTSizes} \
      ~{qQSizes} \
      ~{targetTargetLst} \
      ~{queryQueryLst} \
      ~{outOutPsl}
  >>>
}