version 1.0

task GraphSimplificationpyInfile {
  input {
    Int? length_minimal_suffix
    String in_file
  }
  command <<<
    graph_simplification_py infile \
      ~{in_file} \
      ~{if defined(length_minimal_suffix) then ("-l " +  '"' + length_minimal_suffix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    length_minimal_suffix: "Length of minimal suffix for node merging"
    in_file: "outfile"
  }
  output {
    File out_stdout = stdout()
  }
}