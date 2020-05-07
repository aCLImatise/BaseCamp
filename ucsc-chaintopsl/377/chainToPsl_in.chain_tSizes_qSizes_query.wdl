version 1.0

task ChainToPslIn.chainTSizesQSizesQuery.lst {
  input {
    String? targetTargetLst
    String? queryQueryLst
    String? outOutPsl
  }
  command <<<
    chainToPsl in.chain tSizes qSizes query.lst \
      ~{targetTargetLst} \
      ~{queryQueryLst} \
      ~{outOutPsl}
  >>>
}