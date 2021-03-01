version 1.0

task AtacDriverpy {
  command <<<
    AtacDriver_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}