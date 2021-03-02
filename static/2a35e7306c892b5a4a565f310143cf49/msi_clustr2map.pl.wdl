version 1.0

task MsiClustr2mappl {
  command <<<
    msi_clustr2map_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/msi:0.3.5--1"
  }
  output {
    File out_stdout = stdout()
  }
}