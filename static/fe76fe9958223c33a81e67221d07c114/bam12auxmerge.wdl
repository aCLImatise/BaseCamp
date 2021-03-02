version 1.0

task Bam12auxmerge {
  command <<<
    bam12auxmerge
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}