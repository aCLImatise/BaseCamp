version 1.0

task SEACR13sh {
  command <<<
    SEACR_1_3_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}