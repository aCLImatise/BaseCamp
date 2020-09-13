version 1.0

task Rnasamba {
  command <<<
    rnasamba
  >>>
  output {
    File out_stdout = stdout()
  }
}