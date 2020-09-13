version 1.0

task Bamfilterheader2 {
  command <<<
    bamfilterheader2
  >>>
  output {
    File out_stdout = stdout()
  }
}