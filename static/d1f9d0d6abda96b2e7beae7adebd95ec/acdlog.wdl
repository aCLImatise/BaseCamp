version 1.0

task Acdlog {
  command <<<
    acdlog
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}