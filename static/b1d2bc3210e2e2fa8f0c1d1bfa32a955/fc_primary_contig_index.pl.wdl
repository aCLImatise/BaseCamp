version 1.0

task FcPrimaryContigIndexpl {
  command <<<
    fc_primary_contig_index_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}