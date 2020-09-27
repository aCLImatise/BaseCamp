version 1.0

task M2fmtTierHitspl {
  command <<<
    m2fmt_tier_hits_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}