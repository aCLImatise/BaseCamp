version 1.0

task Windowmasker2222Adapterpy {
  command <<<
    windowmasker_2_2_22_adapter_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/blast:2.10.1--pl526he19e7b1_3"
  }
  output {
    File out_stdout = stdout()
  }
}