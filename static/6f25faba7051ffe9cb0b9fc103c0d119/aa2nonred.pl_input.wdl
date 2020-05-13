version 1.0

task Aa2nonred.plInput.fa {
  input {
    String? outputOutputFa
  }
  command <<<
    aa2nonred.pl input.fa \
      ~{outputOutputFa}
  >>>
}