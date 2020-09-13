version 1.0

task Marge {
  command <<<
    marge
  >>>
  output {
    File out_stdout = stdout()
  }
}