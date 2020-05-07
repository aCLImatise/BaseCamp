version 1.0

task GetRnaPred {
  input {
    String? accAcc
  }
  command <<<
    getRnaPred \
      ~{accAcc}
  >>>
}