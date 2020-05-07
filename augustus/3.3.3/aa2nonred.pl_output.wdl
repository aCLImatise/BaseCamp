version 1.0

task Aa2nonred.plOutput.fa {
  input {
    String? inputInputFa
    String? outputOutputFa
  }
  command <<<
    aa2nonred.pl output.fa \
      ~{inputInputFa} \
      ~{outputOutputFa}
  >>>
}