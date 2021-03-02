version 1.0

task FCS1DplotggcytoR {
  command <<<
    FCS1Dplotggcyto_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}