version 1.0

task CombineMUMs {
  input {
    String ref_sequence
    String match_sequences
    String gaps_file
  }
  command <<<
    combineMUMs \
      ~{ref_sequence} \
      ~{match_sequences} \
      ~{gaps_file}
  >>>
  parameter_meta {
    ref_sequence: ""
    match_sequences: ""
    gaps_file: ""
  }
}