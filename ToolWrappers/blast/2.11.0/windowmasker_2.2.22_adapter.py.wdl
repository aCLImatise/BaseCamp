version 1.0

task Windowmasker2222Adapterpy {
  command <<<
    windowmasker_2_2_22_adapter_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/blast:2.11.0--pl526he19e7b1_0"
  }
  output {
    File out_stdout = stdout()
  }
}