version 1.0

task Ytasm {
  command <<<
    ytasm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}