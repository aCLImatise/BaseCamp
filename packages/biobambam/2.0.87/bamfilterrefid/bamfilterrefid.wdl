version 1.0

task Bamfilterrefid {
  command <<<
    bamfilterrefid
  >>>
  output {
    File out_stdout = stdout()
  }
}