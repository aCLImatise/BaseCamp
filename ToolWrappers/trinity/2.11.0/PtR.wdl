version 1.0

task PtR {
  command <<<
    PtR
  >>>
  runtime {
    docker: "quay.io/biocontainers/trinity:2.11.0--h5ef6573_1"
  }
  output {
    File out_stdout = stdout()
  }
}