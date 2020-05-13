version 1.0

task FaFilterNIn.faMaxPercentN {
  input {
    String? outOutFa
    Int? maxMaxPercentN
  }
  command <<<
    faFilterN in.fa maxPercentN \
      ~{outOutFa} \
      ~{maxMaxPercentN}
  >>>
}