version 1.0

task Mergeprocesssh {
  command <<<
    mergeprocess_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}