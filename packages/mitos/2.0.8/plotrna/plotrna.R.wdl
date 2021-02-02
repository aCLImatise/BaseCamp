version 1.0

task PlotrnaR {
  command <<<
    plotrna_R
  >>>
  output {
    File out_stdout = stdout()
  }
}