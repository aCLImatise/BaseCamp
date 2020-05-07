version 1.0

task ChainToPslIn.chainTSizesTarget.lst {
  input {
    String? qQSizes
    String? targetTargetLst
    String? queryQueryLst
    String? outOutPsl
  }
  command <<<
    chainToPsl in.chain tSizes target.lst \
      ~{qQSizes} \
      ~{targetTargetLst} \
      ~{queryQueryLst} \
      ~{outOutPsl}
  >>>
}