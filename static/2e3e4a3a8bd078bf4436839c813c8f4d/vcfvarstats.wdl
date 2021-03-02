version 1.0

task Vcfvarstats {
  command <<<
    vcfvarstats
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}