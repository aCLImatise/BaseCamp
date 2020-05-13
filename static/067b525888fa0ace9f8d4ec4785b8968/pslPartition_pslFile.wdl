version 1.0

task PslPartitionPslFile {
  input {
    String? outdirOutdir
  }
  command <<<
    pslPartition pslFile \
      ~{outdirOutdir}
  >>>
}