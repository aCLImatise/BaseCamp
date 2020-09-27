version 1.0

task Saddle2gmlpl {
  command <<<
    saddle2gml_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}