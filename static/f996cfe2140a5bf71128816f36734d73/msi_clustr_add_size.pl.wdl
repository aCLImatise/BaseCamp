version 1.0

task MsiClustrAddSizepl {
  command <<<
    msi_clustr_add_size_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/msi:0.3.5--1"
  }
  output {
    File out_stdout = stdout()
  }
}