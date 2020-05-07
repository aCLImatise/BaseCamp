version 1.0

task PartitionSmp {
  input {
    String? partitionPartition
    String? sequenceSequenceFile
    String? pfsPfsFile
  }
  command <<<
    partition-smp \
      ~{partitionPartition} \
      ~{sequenceSequenceFile} \
      ~{pfsPfsFile}
  >>>
}