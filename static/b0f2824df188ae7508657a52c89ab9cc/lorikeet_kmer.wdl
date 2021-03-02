version 1.0

task LorikeetKmer {
  input {
    String? flags
  }
  command <<<
    lorikeet kmer \
      ~{flags}
  >>>
  runtime {
    docker: "quay.io/biocontainers/lorikeet-genome:0.5.0--h9eda3c7_0"
  }
  parameter_meta {
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}