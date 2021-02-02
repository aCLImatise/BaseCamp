version 1.0

task MaskNregionspl {
  command <<<
    maskNregions_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}