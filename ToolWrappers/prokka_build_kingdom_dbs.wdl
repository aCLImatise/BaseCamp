version 1.0

task ProkkabuildKingdomDbs {
  command <<<
    prokka_build_kingdom_dbs
  >>>
  output {
    File out_stdout = stdout()
  }
}