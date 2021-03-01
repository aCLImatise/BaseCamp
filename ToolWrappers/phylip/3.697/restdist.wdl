version 1.0

task Restdist {
  command <<<
    restdist
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}