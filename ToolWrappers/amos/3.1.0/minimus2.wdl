version 1.0

task Minimus2 {
  command <<<
    minimus2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}