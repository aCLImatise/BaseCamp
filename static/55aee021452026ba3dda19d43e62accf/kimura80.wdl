version 1.0

task Kimura80 {
  command <<<
    kimura80
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}