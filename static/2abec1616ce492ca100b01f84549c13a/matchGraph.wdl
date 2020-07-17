version 1.0

task MatchGraph.py {
  input {
    String? is_input_filename
    String? is_output_filename
    String? max_cardinality_matching
  }
  command <<<
    matchGraph.py \
      ~{if defined(is_input_filename) then ("-e " +  '"' + is_input_filename + '"') else ""} \
      ~{if defined(is_output_filename) then ("-w " +  '"' + is_output_filename + '"') else ""} \
      ~{if defined(max_cardinality_matching) then ("-c " +  '"' + max_cardinality_matching + '"') else ""}
  >>>
  parameter_meta {
    is_input_filename: "is the input filename"
    is_output_filename: "is the output filename"
    max_cardinality_matching: "the max cardinality matching"
  }
}