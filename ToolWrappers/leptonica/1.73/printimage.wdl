version 1.0

task Printimage {
  command <<<
    printimage
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}