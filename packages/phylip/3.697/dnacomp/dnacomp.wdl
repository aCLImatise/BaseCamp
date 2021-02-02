version 1.0

task Dnacomp {
  command <<<
    dnacomp
  >>>
  output {
    File out_stdout = stdout()
  }
}