version 1.0

task GmtkViterbi {
  command <<<
    gmtkViterbi
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}