version 1.0

task H5cc {
  command <<<
    h5cc
  >>>
  output {
    File out_stdout = stdout()
  }
}