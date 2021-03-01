version 1.0

task AssignGenomeAnnotation {
  input {
    Boolean? tags
    Boolean? frag_length
    File? prioritize
    File? ann
    File? stats
    File peak_file_or_tag_directory
    File annotation_file
  }
  command <<<
    assignGenomeAnnotation \
      ~{peak_file_or_tag_directory} \
      ~{annotation_file} \
      ~{if (tags) then "-tags" else ""} \
      ~{if (frag_length) then "-fragLength" else ""} \
      ~{if defined(prioritize) then ("-prioritize " +  '"' + prioritize + '"') else ""} \
      ~{if defined(ann) then ("-ann " +  '"' + ann + '"') else ""} \
      ~{if defined(stats) then ("-stats " +  '"' + stats + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tags: "(Use if first argument is a tag directory)"
    frag_length: "<#|auto> (Approximate fragment length, default: auto)"
    prioritize: "(annotation file is just a peak file - hasn't been prioritized yet)\\nA prioritized file will be created for future use with the program\\nThis option should be used if the annotation file isn't prioritized"
    ann: "(File to output annotations for each peak/tag, by default not created)"
    stats: "(File to output annotation statistics, default to stdout)"
    peak_file_or_tag_directory: ""
    annotation_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_prioritize = "${in_prioritize}"
    File out_ann = "${in_ann}"
    File out_stats = "${in_stats}"
  }
}