version 1.0

task Bammapdist {
  command <<<
    bammapdist
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}