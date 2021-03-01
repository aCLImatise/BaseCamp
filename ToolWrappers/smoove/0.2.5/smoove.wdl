version 1.0

task Smoove {
  command <<<
    smoove
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}