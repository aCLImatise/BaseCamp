version 1.0

task Tstesummarytxt {
  command <<<
    tst_esummary_txt
  >>>
  runtime {
    docker: "quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1"
  }
  output {
    File out_stdout = stdout()
  }
}