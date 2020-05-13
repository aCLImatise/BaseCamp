version 1.0

task AxtToPslQSizes {
  input {
    String? inInAXt
    String? tTSizes
    String? qQSizes
    String? outOutPsl
  }
  command <<<
    axtToPsl qSizes \
      ~{inInAXt} \
      ~{tTSizes} \
      ~{qQSizes} \
      ~{outOutPsl}
  >>>
}