version 1.0

task FALCONHeaderConverterpl {
  command <<<
    FALCON_headerConverter_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}