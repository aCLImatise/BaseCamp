version 1.0

task RbtFastqsplit {
  input {
    String? chunks
  }
  command <<<
    rbt fastq_split \
      ~{chunks}
  >>>
  parameter_meta {
    chunks: ""
  }
  output {
    File out_stdout = stdout()
  }
}