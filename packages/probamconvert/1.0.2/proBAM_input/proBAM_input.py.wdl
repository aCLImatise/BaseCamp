version 1.0

task ProBAMInputpy {
  command <<<
    proBAM_input_py
  >>>
  output {
    File out_stdout = stdout()
  }
}