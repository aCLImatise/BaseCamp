version 1.0

task PartitionPfs file {
  input {
    String? sequenceSequenceFile
    String? pfsPfsFile
  }
  command <<<
    partition pfs file \
      ~{sequenceSequenceFile} \
      ~{pfsPfsFile}
  >>>
}