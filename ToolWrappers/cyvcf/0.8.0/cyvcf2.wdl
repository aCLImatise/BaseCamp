version 1.0

task Cyvcf2 {
  command <<<
    cyvcf2
  >>>
  output {
    File out_stdout = stdout()
  }
}