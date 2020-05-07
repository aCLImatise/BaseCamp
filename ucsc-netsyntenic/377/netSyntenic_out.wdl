version 1.0

task NetSyntenicOut.net {
  input {
    String? inInNet
    String? outOutNet
  }
  command <<<
    netSyntenic out.net \
      ~{inInNet} \
      ~{outOutNet}
  >>>
}