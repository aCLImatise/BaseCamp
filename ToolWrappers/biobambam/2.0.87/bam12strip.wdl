version 1.0

task Bam12strip {
  command <<<
    bam12strip
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}