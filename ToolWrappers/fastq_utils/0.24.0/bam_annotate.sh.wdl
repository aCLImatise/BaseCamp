version 1.0

task BamAnnotatesh {
  command <<<
    bam_annotate_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}