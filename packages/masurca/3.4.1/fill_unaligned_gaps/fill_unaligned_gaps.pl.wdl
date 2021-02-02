version 1.0

task FillUnalignedGapspl {
  command <<<
    fill_unaligned_gaps_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}