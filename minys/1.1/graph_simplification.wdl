version 1.0

task GraphSimplification.py {
  input {
    String? length_minimal_suffix
    String in_file
    String outfile
  }
  command <<<
    graph_simplification.py \
      ~{in_file} \
      ~{outfile} \
      ~{if defined(length_minimal_suffix) then ("-l " +  '"' + length_minimal_suffix + '"') else ""}
  >>>
  parameter_meta {
    length_minimal_suffix: "Length of minimal suffix for node merging"
    in_file: ""
    outfile: ""
  }
}