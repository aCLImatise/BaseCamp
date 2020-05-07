version 1.0

task ChainToPslIn.chainTSizesQSizesTarget.lstOut.psl {
  input {
    String? queryQueryLst
    String? outOutPsl
  }
  command <<<
    chainToPsl in.chain tSizes qSizes target.lst out.psl \
      ~{queryQueryLst} \
      ~{outOutPsl}
  >>>
}