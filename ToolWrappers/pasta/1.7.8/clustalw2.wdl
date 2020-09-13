version 1.0

task Clustalw2 {
  command <<<
    clustalw2
  >>>
  output {
    File out_stdout = stdout()
  }
}