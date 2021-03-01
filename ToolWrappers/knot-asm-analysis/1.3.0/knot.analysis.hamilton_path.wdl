version 1.0

task KnotanalysishamiltonPath {
  input {
    File? path_to_aag
    File? path_where_was
    Boolean? circular
  }
  command <<<
    knot_analysis_hamilton_path \
      ~{if defined(path_to_aag) then ("--input " +  '"' + path_to_aag + '"') else ""} \
      ~{if defined(path_where_was) then ("--output " +  '"' + path_where_was + '"') else ""} \
      ~{if (circular) then "--circular" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0"
  }
  parameter_meta {
    path_to_aag: "path to the AAG"
    path_where_was: "path where hamilton path was write"
    circular: "genome is circular"
  }
  output {
    File out_stdout = stdout()
  }
}