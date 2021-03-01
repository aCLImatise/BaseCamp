version 1.0

task Preg {
  command <<<
    preg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}