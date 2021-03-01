version 1.0

task Printsplitimage {
  command <<<
    printsplitimage
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}