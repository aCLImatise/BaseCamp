version 1.0

task MIRfixpy {
  command <<<
    MIRfix_py
  >>>
  output {
    File out_stdout = stdout()
  }
}