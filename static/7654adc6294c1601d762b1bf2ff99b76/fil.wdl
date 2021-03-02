version 1.0

task Fil {
  command <<<
    fil
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}