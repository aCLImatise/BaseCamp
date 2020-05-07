version 1.0

task AxtToPslIn.axtTSizesOut.psl {
  input {
    String? qQSizes
    String? outOutPsl
  }
  command <<<
    axtToPsl in.axt tSizes out.psl \
      ~{qQSizes} \
      ~{outOutPsl}
  >>>
}