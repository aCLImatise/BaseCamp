version 1.0

task Acdlog {
  command <<<
    acdlog
  >>>
  output {
    File out_stdout = stdout()
  }
}