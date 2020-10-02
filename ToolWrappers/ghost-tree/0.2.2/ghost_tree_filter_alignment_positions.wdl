version 1.0

task GhosttreeFilteralignmentpositions {
  input {
    String foundation_alignment_file
  }
  command <<<
    ghost_tree filter_alignment_positions \
      ~{foundation_alignment_file}
  >>>
  parameter_meta {
    foundation_alignment_file: "MAXIMUM_GAP_FREQUENCY"
  }
  output {
    File out_stdout = stdout()
  }
}