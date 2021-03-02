version 1.0

task LegacyBlastpl {
  command <<<
    legacy_blast_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/rmblast:2.10.0--h2d02072_0"
  }
  output {
    File out_stdout = stdout()
  }
}