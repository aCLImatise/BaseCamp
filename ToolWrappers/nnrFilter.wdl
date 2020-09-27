version 1.0

task NnrFilter {
  command <<<
    nnrFilter
  >>>
  output {
    File out_stdout = stdout()
  }
}