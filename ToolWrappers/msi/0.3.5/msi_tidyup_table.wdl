version 1.0

task MsiTidyupTable {
  command <<<
    msi_tidyup_table
  >>>
  runtime {
    docker: "quay.io/biocontainers/msi:0.3.5--1"
  }
  output {
    File out_stdout = stdout()
  }
}