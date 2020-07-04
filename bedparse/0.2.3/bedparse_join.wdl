version 1.0

task BedparseJoin {
  input {
    String? annotation
    String? column
    String? separator
    String? empty
    Boolean? no_unmatched
  }
  command <<<
    bedparse join \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if defined(column) then ("--column " +  '"' + column + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if defined(empty) then ("--empty " +  '"' + empty + '"') else ""} \
      ~{true="--noUnmatched" false="" no_unmatched}
  >>>
  parameter_meta {
    annotation: "Path to the annotation file."
    column: "Column of the annotation file (1-based, default=1)."
    separator: "Field separator for the annotation file (default tab)"
    empty: "String to append to empty records (default '.')."
    no_unmatched: "Do not print unmatched lines."
  }
}