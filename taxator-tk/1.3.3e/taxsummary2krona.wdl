version 1.0

task Taxsummary2krona {
  command <<<
    taxsummary2krona
  >>>
  output {
    File out_stdout = stdout()
  }
}