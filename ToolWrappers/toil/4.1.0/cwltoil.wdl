version 1.0

task Cwltoil {
  command <<<
    cwltoil
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}