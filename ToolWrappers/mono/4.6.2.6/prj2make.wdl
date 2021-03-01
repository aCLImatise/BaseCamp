version 1.0

task Prj2make {
  command <<<
    prj2make
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}