version 1.0

task MetaPopPreprocessR {
  command <<<
    MetaPop_Preprocess_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/metapop:1.0.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}