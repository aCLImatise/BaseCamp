version 1.0

task AxtToPslTSizes {
  input {
    String? inInAXt
    String? tTSizes
    String? qQSizes
    String? outOutPsl
  }
  command <<<
    axtToPsl tSizes \
      ~{inInAXt} \
      ~{tTSizes} \
      ~{qQSizes} \
      ~{outOutPsl}
  >>>
}