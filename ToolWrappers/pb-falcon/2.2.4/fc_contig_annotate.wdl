version 1.0

task FcContigAnnotate {
  command <<<
    fc_contig_annotate
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}