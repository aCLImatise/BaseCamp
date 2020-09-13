version 1.0

task Randomgenomesh {
  input {
    String len
  }
  command <<<
    randomgenome_sh \
      ~{len}
  >>>
  parameter_meta {
    len: ""
  }
  output {
    File out_stdout = stdout()
  }
}