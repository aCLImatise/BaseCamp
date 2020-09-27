version 1.0

task Pandaseq {
  command <<<
    pandaseq
  >>>
  output {
    File out_stdout = stdout()
  }
}