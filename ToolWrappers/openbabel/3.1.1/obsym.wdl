version 1.0

task Obsym {
  command <<<
    obsym
  >>>
  runtime {
    docker: "quay.io/biocontainers/openbabel:3.1.1"
  }
  output {
    File out_stdout = stdout()
  }
}