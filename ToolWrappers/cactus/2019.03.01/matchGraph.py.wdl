version 1.0

task MatchGraphpy {
  input {
    File? is_input_filename
    File? is_output_filename
    Int? max_cardinality_matching
  }
  command <<<
    matchGraph_py \
      ~{if defined(is_input_filename) then ("-e " +  '"' + is_input_filename + '"') else ""} \
      ~{if defined(is_output_filename) then ("-w " +  '"' + is_output_filename + '"') else ""} \
      ~{if defined(max_cardinality_matching) then ("-c " +  '"' + max_cardinality_matching + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    is_input_filename: "is the input filename"
    is_output_filename: "is the output filename"
    max_cardinality_matching: "the max cardinality matching"
  }
  output {
    File out_stdout = stdout()
    File out_is_output_filename = "${in_is_output_filename}"
  }
}