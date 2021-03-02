version 1.0

task FilterHweByPoppl {
  command <<<
    filter_hwe_by_pop_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/ddocent:2.8.13--0"
  }
  output {
    File out_stdout = stdout()
  }
}