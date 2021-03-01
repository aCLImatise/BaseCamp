version 1.0

task VcfPair {
  command <<<
    vcfPair
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}