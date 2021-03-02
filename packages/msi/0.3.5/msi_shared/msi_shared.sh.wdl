version 1.0

task MsiSharedsh {
  command <<<
    msi_shared_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/msi:0.3.5--1"
  }
  output {
    File out_stdout = stdout()
  }
}