version 1.0

task Vcftoolbox {
  command <<<
    vcftoolbox
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}