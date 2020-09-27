version 1.0

task Vcfsorterpl {
  command <<<
    vcfsorter_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}