version 1.0

task Preg {
  command <<<
    _preg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}