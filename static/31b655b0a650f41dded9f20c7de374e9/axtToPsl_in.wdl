version 1.0

task AxtToPslIn.axtQSizes {
  input {
    String? tTSizes
    String? qQSizes
    String? outOutPsl
  }
  command <<<
    axtToPsl in.axt qSizes \
      ~{tTSizes} \
      ~{qQSizes} \
      ~{outOutPsl}
  >>>
}