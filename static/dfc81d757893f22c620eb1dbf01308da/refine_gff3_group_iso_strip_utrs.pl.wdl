version 1.0

task RefineGff3GroupIsoStripUtrspl {
  command <<<
    refine_gff3_group_iso_strip_utrs_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}