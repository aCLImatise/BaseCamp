version 1.0

task MsiTidyupResults {
  command <<<
    msi_tidyup_results
  >>>
  runtime {
    docker: "quay.io/biocontainers/msi:0.3.5--1"
  }
  output {
    File out_stdout = stdout()
  }
}