version 1.0

task Srapath2 {
  command <<<
    srapath_2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}