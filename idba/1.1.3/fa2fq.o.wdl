version 1.0

task Fa2fqo {
  command <<<
    fa2fq_o
  >>>
  output {
    File out_stdout = stdout()
  }
}