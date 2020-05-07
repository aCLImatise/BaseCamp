version 1.0

task FaFilterNMaxPercentN {
  input {
    String? inInFa
    String? outOutFa
    Int? maxMaxPercentN
  }
  command <<<
    faFilterN maxPercentN \
      ~{inInFa} \
      ~{outOutFa} \
      ~{maxMaxPercentN}
  >>>
}