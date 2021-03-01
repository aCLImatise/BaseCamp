version 1.0

task Cyvcf2 {
  command <<<
    cyvcf2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}