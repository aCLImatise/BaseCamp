version 1.0

task NetSyntenicIn.net {
  input {
    String? outOutNet
  }
  command <<<
    netSyntenic in.net \
      ~{outOutNet}
  >>>
}