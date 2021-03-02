version 1.0

task Obrotate {
  command <<<
    obrotate
  >>>
  runtime {
    docker: "quay.io/biocontainers/openbabel:3.1.1"
  }
  output {
    File out_stdout = stdout()
  }
}