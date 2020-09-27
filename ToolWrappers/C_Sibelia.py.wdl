version 1.0

task CSibeliapy {
  command <<<
    C_Sibelia_py
  >>>
  output {
    File out_stdout = stdout()
  }
}