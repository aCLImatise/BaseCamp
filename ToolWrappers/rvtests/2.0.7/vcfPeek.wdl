version 1.0

task VcfPeek {
  command <<<
    vcfPeek
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}