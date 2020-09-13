version 1.0

task SEACR13sh {
  command <<<
    SEACR_1_3_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}