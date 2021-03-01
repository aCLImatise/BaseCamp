version 1.0

task Pycompleter {
  command <<<
    pycompleter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}