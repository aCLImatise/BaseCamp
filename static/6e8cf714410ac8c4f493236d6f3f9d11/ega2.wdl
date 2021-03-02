version 1.0

task Ega2 {
  command <<<
    ega2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}