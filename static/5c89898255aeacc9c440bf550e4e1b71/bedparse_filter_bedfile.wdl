version 1.0

task BedparseFilterBedfile {
  input {
    String? annotation
    String? column
    String bed_parse
    String filter
  }
  command <<<
    bedparse filter bedfile \
      ~{bed_parse} \
      ~{filter} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if defined(column) then ("--column " +  '"' + column + '"') else ""}
  >>>
  parameter_meta {
    annotation: ""
    column: ""
    bed_parse: ""
    filter: ""
  }
}