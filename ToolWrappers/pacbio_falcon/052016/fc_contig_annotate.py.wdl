version 1.0

task FcContigAnnotatepy {
  command <<<
    fc_contig_annotate_py
  >>>
  output {
    File out_stdout = stdout()
  }
}