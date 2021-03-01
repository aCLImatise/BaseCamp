version 1.0

task Windowmasker2222Adapterpy {
  command <<<
    windowmasker_2_2_22_adapter_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/rmblast:2.10.0--h2d02072_0"
  }
  output {
    File out_stdout = stdout()
  }
}