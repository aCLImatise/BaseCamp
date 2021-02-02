version 1.0

task AtacDriverpy {
  command <<<
    AtacDriver_py
  >>>
  output {
    File out_stdout = stdout()
  }
}