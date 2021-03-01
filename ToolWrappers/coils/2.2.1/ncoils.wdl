version 1.0

task Ncoils {
  command <<<
    ncoils
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}