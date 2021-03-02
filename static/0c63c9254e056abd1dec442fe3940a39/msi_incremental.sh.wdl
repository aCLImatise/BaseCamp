version 1.0

task MsiIncrementalsh {
  command <<<
    msi_incremental_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/msi:0.3.5--1"
  }
  output {
    File out_stdout = stdout()
  }
}