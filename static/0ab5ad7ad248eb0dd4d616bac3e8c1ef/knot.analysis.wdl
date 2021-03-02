version 1.0

task Knotanalysis {
  input {
    String? input_prefix
    File? path_where_was
    Boolean? classification
    Boolean? hamilton_path
    String knot_dot_analysis_dot_generate_report
  }
  command <<<
    knot_analysis \
      ~{knot_dot_analysis_dot_generate_report} \
      ~{if defined(input_prefix) then ("--input_prefix " +  '"' + input_prefix + '"') else ""} \
      ~{if defined(path_where_was) then ("--output " +  '"' + path_where_was + '"') else ""} \
      ~{if (classification) then "--classification" else ""} \
      ~{if (hamilton_path) then "--hamilton-path" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0"
  }
  parameter_meta {
    input_prefix: "prefix of knot output"
    path_where_was: "path where report was write"
    classification: "Add path classification in report"
    hamilton_path: "Add hamilton path in report"
    knot_dot_analysis_dot_generate_report: ""
  }
  output {
    File out_stdout = stdout()
  }
}