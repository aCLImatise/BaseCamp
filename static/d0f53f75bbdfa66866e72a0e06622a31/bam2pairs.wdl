version 1.0

task Bam2pairs {
  command <<<
    bam2pairs
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}