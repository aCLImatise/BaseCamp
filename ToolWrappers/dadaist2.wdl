version 1.0

task Dadaist2 {
  command <<<
    dadaist2
  >>>
  output {
    File out_stdout = stdout()
  }
}