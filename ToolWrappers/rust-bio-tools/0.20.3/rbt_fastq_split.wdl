version 1.0

task RbtFastqsplit {
  input {
    String? chunks
  }
  command <<<
    rbt fastq_split \
      ~{chunks}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rust-bio-tools:0.20.3--h4eb7995_3"
  }
  parameter_meta {
    chunks: ""
  }
  output {
    File out_stdout = stdout()
  }
}