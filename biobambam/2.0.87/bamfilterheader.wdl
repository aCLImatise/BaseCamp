version 1.0

task Bamfilterheader {
  command <<<
    bamfilterheader
  >>>
  output {
    File out_stdout = stdout()
  }
}