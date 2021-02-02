version 1.0

task Dnaml {
  command <<<
    dnaml
  >>>
  output {
    File out_stdout = stdout()
  }
}