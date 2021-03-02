version 1.0

task MsiTimeIt {
  command <<<
    msi_time_it
  >>>
  runtime {
    docker: "quay.io/biocontainers/msi:0.3.5--1"
  }
  output {
    File out_stdout = stdout()
  }
}