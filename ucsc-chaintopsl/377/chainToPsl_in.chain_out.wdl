version 1.0

task ChainToPslIn.chainOut.psl {
  input {
    String? tTSizes
    String? qQSizes
    String? targetTargetLst
    String? queryQueryLst
    String? outOutPsl
  }
  command <<<
    chainToPsl in.chain out.psl \
      ~{tTSizes} \
      ~{qQSizes} \
      ~{targetTargetLst} \
      ~{queryQueryLst} \
      ~{outOutPsl}
  >>>
}