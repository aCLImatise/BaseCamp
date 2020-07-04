version 1.0

task MakeAlignmentWithSelectedPathWhenOverlaps.py {
  input {
    Int? minimum_continuous_match
    String? similarity_threshold_took
    String input_files
  }
  command <<<
    make_alignment_with_selected_path_when_overlaps.py \
      ~{input_files} \
      ~{if defined(minimum_continuous_match) then ("-k " +  '"' + minimum_continuous_match + '"') else ""} \
      ~{if defined(similarity_threshold_took) then ("-s " +  '"' + similarity_threshold_took + '"') else ""}
  >>>
  parameter_meta {
    minimum_continuous_match: "minimum continuous match above which as overlap. Default: 10"
    similarity_threshold_took: "similarity threshold above which took as overlap. Default: 0.8"
    input_files: ""
  }
}