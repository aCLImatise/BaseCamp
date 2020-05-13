version 1.0

task PartitionSequence file {
  input {
    String? pfsPfsFile
  }
  command <<<
    partition sequence file \
      ~{pfsPfsFile}
  >>>
}