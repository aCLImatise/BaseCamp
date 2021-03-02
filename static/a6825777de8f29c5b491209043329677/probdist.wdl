version 1.0

task Probdist {
  command <<<
    probdist
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}