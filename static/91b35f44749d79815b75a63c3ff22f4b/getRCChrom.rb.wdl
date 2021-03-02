version 1.0

task GetRCChromrb {
  command <<<
    getRCChrom_rb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}