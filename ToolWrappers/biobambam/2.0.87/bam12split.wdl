version 1.0

task Bam12split {
  command <<<
    bam12split
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}