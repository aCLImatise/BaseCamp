version 1.0

task GetFCSheaderR {
  command <<<
    getFCSheader_R
  >>>
  output {
    File out_stdout = stdout()
  }
}