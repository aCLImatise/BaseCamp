version 1.0

task Knotanalysisclassifications {
  input {
    File? path_to_aag
    File? path_where_was
    Int? threshold
  }
  command <<<
    knot_analysis_classifications \
      ~{if defined(path_to_aag) then ("--input " +  '"' + path_to_aag + '"') else ""} \
      ~{if defined(path_where_was) then ("--output " +  '"' + path_where_was + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0"
  }
  parameter_meta {
    path_to_aag: "path to the AAG"
    path_where_was: "path where classification report was write"
    threshold: "path length threshold\\n"
  }
  output {
    File out_stdout = stdout()
  }
}