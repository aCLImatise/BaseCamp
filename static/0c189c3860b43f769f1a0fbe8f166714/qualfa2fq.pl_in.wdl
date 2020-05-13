version 1.0

task Qualfa2fq.plIn.qual {
  input {
    String? inInFasta
    String? inInQual
  }
  command <<<
    qualfa2fq.pl in.qual \
      ~{inInFasta} \
      ~{inInQual}
  >>>
}