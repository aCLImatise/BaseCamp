version 1.0

task Ogenerateconsensusfromalignment {
  command <<<
    o_generate_consensus_from_alignment
  >>>
  output {
    File out_stdout = stdout()
  }
}