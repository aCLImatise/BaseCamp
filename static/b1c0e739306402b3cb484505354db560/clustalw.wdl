version 1.0

task Clustalw {
  command <<<
    clustalw
  >>>
  output {
    File out_stdout = stdout()
  }
}