version 1.0

task AxtToPslOut.psl {
  input {
    String? inInAXt
    String? tTSizes
    String? qQSizes
    String? outOutPsl
  }
  command <<<
    axtToPsl out.psl \
      ~{inInAXt} \
      ~{tTSizes} \
      ~{qQSizes} \
      ~{outOutPsl}
  >>>
}