version 1.0

task ConvertLtrdetectorpl {
  command <<<
    convert_ltrdetector_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/ltr_retriever:2.9.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}