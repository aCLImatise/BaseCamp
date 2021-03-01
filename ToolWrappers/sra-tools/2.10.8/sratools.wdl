version 1.0

task Sratools {
  command <<<
    sratools
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}