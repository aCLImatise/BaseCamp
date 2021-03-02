version 1.0

task MsiDocker {
  command <<<
    msi_docker
  >>>
  runtime {
    docker: "quay.io/biocontainers/msi:0.3.5--1"
  }
  output {
    File out_stdout = stdout()
  }
}