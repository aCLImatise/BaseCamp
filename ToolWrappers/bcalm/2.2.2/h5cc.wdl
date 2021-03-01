version 1.0

task H5cc {
  command <<<
    h5cc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}