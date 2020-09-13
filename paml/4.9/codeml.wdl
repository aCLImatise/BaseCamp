version 1.0

task Codeml {
  command <<<
    codeml
  >>>
  output {
    File out_stdout = stdout()
  }
}