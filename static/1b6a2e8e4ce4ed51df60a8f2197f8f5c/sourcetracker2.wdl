version 1.0

task Sourcetracker2 {
  command <<<
    sourcetracker2
  >>>
  output {
    File out_stdout = stdout()
  }
}