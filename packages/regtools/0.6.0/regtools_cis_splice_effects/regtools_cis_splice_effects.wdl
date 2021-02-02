version 1.0

task RegtoolsCisspliceeffects {
  command <<<
    regtools cis_splice_effects
  >>>
  output {
    File out_stdout = stdout()
  }
}