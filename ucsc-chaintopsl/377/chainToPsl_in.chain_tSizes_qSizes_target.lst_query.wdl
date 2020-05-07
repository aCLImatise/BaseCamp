version 1.0

task ChainToPslIn.chainTSizesQSizesTarget.lstQuery.lst {
  input {
    String? outOutPsl
  }
  command <<<
    chainToPsl in.chain tSizes qSizes target.lst query.lst \
      ~{outOutPsl}
  >>>
}