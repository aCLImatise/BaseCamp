version 1.0

task FcPrimaryContigIndexpl {
  command <<<
    fc_primary_contig_index_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}