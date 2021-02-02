version 1.0

task FALCONHeaderConverterpl {
  command <<<
    FALCON_headerConverter_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}