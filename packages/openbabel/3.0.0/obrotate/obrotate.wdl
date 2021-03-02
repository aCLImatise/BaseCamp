version 1.0

task Obrotate {
  command <<<
    obrotate
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}