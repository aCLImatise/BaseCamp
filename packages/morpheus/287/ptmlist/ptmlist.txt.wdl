version 1.0

task Ptmlisttxt {
  command <<<
    ptmlist_txt
  >>>
  runtime {
    docker: "quay.io/biocontainers/morpheus:287--0"
  }
  output {
    File out_stdout = stdout()
  }
}