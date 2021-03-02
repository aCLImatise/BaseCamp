version 1.0

task ConvertMGEScan30pl {
  command <<<
    convert_MGEScan3_0_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/ltr_retriever:2.9.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}