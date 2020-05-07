version 1.0

task FaFilterNOut.fa {
  input {
    String? inInFa
    String? outOutFa
    Int? maxMaxPercentN
  }
  command <<<
    faFilterN out.fa \
      ~{inInFa} \
      ~{outOutFa} \
      ~{maxMaxPercentN}
  >>>
}