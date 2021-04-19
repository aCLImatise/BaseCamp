version 1.0

task Meganserver {
  command <<<
    megan_server
  >>>
  runtime {
    docker: "quay.io/biocontainers/megan:6.21.2--h9ee0642_0"
  }
  output {
    File out_stdout = stdout()
  }
}