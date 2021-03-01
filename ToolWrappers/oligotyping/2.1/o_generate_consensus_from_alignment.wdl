version 1.0

task Ogenerateconsensusfromalignment {
  command <<<
    o_generate_consensus_from_alignment
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}