version 1.0

task RbtFastqSplit {
  input {
    String? chunks
  }
  command <<<
    rbt fastq-split \
      ~{chunks}
  >>>
  parameter_meta {
    chunks: ""
  }
}