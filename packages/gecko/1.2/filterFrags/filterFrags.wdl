version 1.0

task FilterFrags {
  command <<<
    filterFrags
  >>>
  runtime {
    docker: "quay.io/biocontainers/gecko:1.2--h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}