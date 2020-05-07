version 1.0

task PslPartitionOutDir {
  input {
    String? pslPslFile
    String? outdirOutdir
  }
  command <<<
    pslPartition outDir \
      ~{pslPslFile} \
      ~{outdirOutdir}
  >>>
}