version 1.0

task Drttest {
  command <<<
    drttest
  >>>
  runtime {
    docker: "quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0"
  }
  output {
    File out_stdout = stdout()
  }
}