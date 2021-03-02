version 1.0

task MaskNregionspl {
  command <<<
    maskNregions_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}