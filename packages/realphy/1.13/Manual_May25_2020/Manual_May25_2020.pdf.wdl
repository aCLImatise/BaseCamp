version 1.0

task ManualMay252020pdf {
  command <<<
    Manual_May25_2020_pdf
  >>>
  runtime {
    docker: "quay.io/biocontainers/realphy:1.13--0"
  }
  output {
    File out_stdout = stdout()
  }
}