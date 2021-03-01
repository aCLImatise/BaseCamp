version 1.0

task Tstefetchtxt {
  command <<<
    tst_efetch_txt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}