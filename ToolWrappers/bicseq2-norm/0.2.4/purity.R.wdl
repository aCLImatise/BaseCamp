version 1.0

task PurityR {
  command <<<
    purity_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}