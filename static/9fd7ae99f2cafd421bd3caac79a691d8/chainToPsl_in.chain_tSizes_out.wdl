version 1.0

task ChainToPslIn.chainTSizesOut.psl {
  input {
    String? qQSizes
    String? targetTargetLst
    String? queryQueryLst
    String? outOutPsl
  }
  command <<<
    chainToPsl in.chain tSizes out.psl \
      ~{qQSizes} \
      ~{targetTargetLst} \
      ~{queryQueryLst} \
      ~{outOutPsl}
  >>>
}