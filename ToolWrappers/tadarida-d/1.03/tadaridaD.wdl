version 1.0

task TadaridaD {
  command <<<
    tadaridaD
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}