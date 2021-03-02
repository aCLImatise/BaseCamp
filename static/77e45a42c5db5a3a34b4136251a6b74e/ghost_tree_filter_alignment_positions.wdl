version 1.0

task GhosttreeFilteralignmentpositions {
  input {
    String foundation_alignment_file
    String maximum_position_entropy
  }
  command <<<
    ghost_tree filter_alignment_positions \
      ~{foundation_alignment_file} \
      ~{maximum_position_entropy}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    foundation_alignment_file: "MAXIMUM_GAP_FREQUENCY"
    maximum_position_entropy: "OUTPUT_ALIGNMENT_FILE"
  }
  output {
    File out_stdout = stdout()
  }
}