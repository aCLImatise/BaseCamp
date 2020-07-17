version 1.0

task AssignGenomeAnnotation {
  input {
    File? ann
    File? stats
    String peak_file_or_tag_directory
    String annotation_file
  }
  command <<<
    assignGenomeAnnotation \
      ~{peak_file_or_tag_directory} \
      ~{annotation_file} \
      ~{if defined(ann) then ("-ann " +  '"' + ann + '"') else ""} \
      ~{if defined(stats) then ("-stats " +  '"' + stats + '"') else ""}
  >>>
  parameter_meta {
    ann: "(File to output annotations for each peak/tag, by default not created)"
    stats: "(File to output annotation statistics, default to stdout)"
    peak_file_or_tag_directory: ""
    annotation_file: ""
  }
}