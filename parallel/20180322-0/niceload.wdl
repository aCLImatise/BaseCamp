version 1.0

task Niceload {
  command <<<
    niceload
  >>>
  output {
    File out_stdout = stdout()
  }
}