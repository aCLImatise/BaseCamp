version 1.0

task ChainToPslIn.chainTSizesQSizesOut.psl {
  input {
    String? targetTargetLst
    String? queryQueryLst
    String? outOutPsl
  }
  command <<<
    chainToPsl in.chain tSizes qSizes out.psl \
      ~{targetTargetLst} \
      ~{queryQueryLst} \
      ~{outOutPsl}
  >>>
}