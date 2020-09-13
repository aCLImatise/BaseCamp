version 1.0

task GetRCChromrb {
  command <<<
    getRCChrom_rb
  >>>
  output {
    File out_stdout = stdout()
  }
}