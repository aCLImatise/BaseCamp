version 1.0

task Randomgenomesh {
  input {
    String len
  }
  command <<<
    randomgenome_sh \
      ~{len}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bbmap:38.90--h1296035_0"
  }
  parameter_meta {
    len: ""
  }
  output {
    File out_stdout = stdout()
  }
}