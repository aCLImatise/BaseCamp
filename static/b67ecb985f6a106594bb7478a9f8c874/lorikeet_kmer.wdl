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
    docker: "None"
  }
  parameter_meta {
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}