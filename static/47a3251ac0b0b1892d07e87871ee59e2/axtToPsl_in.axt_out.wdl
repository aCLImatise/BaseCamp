version 1.0

task AxtToPslIn.axtOut.psl {
  input {
    String? tTSizes
    String? qQSizes
    String? outOutPsl
  }
  command <<<
    axtToPsl in.axt out.psl \
      ~{tTSizes} \
      ~{qQSizes} \
      ~{outOutPsl}
  >>>
}