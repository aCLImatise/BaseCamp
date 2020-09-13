version 1.0

task Singles {
  command <<<
    singles
  >>>
  output {
    File out_stdout = stdout()
  }
}