version 1.0

task Dolmove {
  command <<<
    dolmove
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}