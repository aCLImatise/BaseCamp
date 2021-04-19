version 1.0

task MEGAN {
  command <<<
    MEGAN
  >>>
  runtime {
    docker: "quay.io/biocontainers/megan:6.21.2--h9ee0642_0"
  }
  output {
    File out_stdout = stdout()
  }
}