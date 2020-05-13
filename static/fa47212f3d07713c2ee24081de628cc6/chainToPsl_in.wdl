version 1.0

task ChainToPslIn.chainQSizes {
  input {
    String? tTSizes
    String? qQSizes
    String? targetTargetLst
    String? queryQueryLst
    String? outOutPsl
  }
  command <<<
    chainToPsl in.chain qSizes \
      ~{tTSizes} \
      ~{qQSizes} \
      ~{targetTargetLst} \
      ~{queryQueryLst} \
      ~{outOutPsl}
  >>>
}