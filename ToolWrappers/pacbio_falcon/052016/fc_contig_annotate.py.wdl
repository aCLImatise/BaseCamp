version 1.0

task FcContigAnnotatepy {
  command <<<
    fc_contig_annotate_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}