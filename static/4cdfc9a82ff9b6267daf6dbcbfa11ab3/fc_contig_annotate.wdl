version 1.0

task FcContigAnnotate {
  command <<<
    fc_contig_annotate
  >>>
  output {
    File out_stdout = stdout()
  }
}