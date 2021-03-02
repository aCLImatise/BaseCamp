version 1.0

task CSibeliapy {
  command <<<
    C_Sibelia_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}