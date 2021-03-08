version 1.0

task Calitas {
  command <<<
    calitas
  >>>
  runtime {
    docker: "quay.io/biocontainers/calitas:1.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}