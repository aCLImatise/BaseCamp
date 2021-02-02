version 1.0

task Sparse {
  command <<<
    sparse
  >>>
  output {
    File out_stdout = stdout()
  }
}