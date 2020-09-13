version 1.0

task Isoseq3 {
  command <<<
    isoseq3
  >>>
  output {
    File out_stdout = stdout()
  }
}