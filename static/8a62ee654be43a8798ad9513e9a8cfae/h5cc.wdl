version 1.0

task H5cc {
  command <<<
    h5cc
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcalm:2.2.3--h8b12597_1"
  }
  output {
    File out_stdout = stdout()
  }
}