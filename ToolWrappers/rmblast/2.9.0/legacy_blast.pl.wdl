version 1.0

task LegacyBlastpl {
  command <<<
    legacy_blast_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}