version 1.0

task Dnamlk {
  command <<<
    dnamlk
  >>>
  output {
    File out_stdout = stdout()
  }
}