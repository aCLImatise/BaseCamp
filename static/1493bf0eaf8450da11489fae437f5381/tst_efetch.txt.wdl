version 1.0

task Tstefetchtxt {
  command <<<
    tst_efetch_txt
  >>>
  runtime {
    docker: "quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1"
  }
  output {
    File out_stdout = stdout()
  }
}