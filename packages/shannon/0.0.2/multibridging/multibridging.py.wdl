version 1.0

task Multibridgingpy {
  command <<<
    multibridging_py
  >>>
  output {
    File out_stdout = stdout()
  }
}