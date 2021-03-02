version 1.0

task PybedtoolsAnnotate {
  input {
    Int? downstream
    File? file_to_annotate
    File? file_with_annotations
    Boolean? report_distance
  }
  command <<<
    pybedtools annotate \
      ~{if defined(downstream) then ("--downstream " +  '"' + downstream + '"') else ""} \
      ~{if defined(file_to_annotate) then ("-a " +  '"' + file_to_annotate + '"') else ""} \
      ~{if defined(file_with_annotations) then ("-b " +  '"' + file_with_annotations + '"') else ""} \
      ~{if (report_distance) then "--report-distance" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    downstream: "not specified only 2 colummns are added to the"
    file_to_annotate: "file to annotate"
    file_with_annotations: "file with annotations"
    report_distance: "report the distance, not just the genes"
  }
  output {
    File out_stdout = stdout()
  }
}