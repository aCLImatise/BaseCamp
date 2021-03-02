version 1.0

task Obrotamer {
  command <<<
    obrotamer
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}