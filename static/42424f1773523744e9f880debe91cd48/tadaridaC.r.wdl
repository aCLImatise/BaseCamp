version 1.0

task TadaridaCr {
  command <<<
    tadaridaC_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}