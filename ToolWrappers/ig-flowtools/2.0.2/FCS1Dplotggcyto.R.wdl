version 1.0

task FCS1DplotggcytoR {
  command <<<
    FCS1Dplotggcyto_R
  >>>
  output {
    File out_stdout = stdout()
  }
}