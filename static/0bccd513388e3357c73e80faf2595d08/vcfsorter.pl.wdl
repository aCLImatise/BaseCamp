version 1.0

task Vcfsorterpl {
  command <<<
    vcfsorter_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}