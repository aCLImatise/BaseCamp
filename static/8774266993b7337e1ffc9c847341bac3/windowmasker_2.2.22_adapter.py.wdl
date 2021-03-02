version 1.0

task Windowmasker2222Adapterpy {
  command <<<
    windowmasker_2_2_22_adapter_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}