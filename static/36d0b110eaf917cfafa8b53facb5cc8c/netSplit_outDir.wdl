version 1.0

task NetSplitOutDir {
  input {
    String? inInNet
    String? outdirOutdir
  }
  command <<<
    netSplit outDir \
      ~{inInNet} \
      ~{outdirOutdir}
  >>>
}