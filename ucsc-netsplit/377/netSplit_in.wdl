version 1.0

task NetSplitIn.net {
  input {
    String? outdirOutdir
  }
  command <<<
    netSplit in.net \
      ~{outdirOutdir}
  >>>
}