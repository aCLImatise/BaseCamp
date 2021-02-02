version 1.0

task CreateFixedReverseKRpy {
  command <<<
    createFixedReverseKR_py
  >>>
  output {
    File out_stdout = stdout()
  }
}