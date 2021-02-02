version 1.0

task LegacyBlastpl {
  command <<<
    legacy_blast_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}