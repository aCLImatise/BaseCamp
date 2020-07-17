version 1.0

task BedparseJoinBedfile {
  input {
    String? annotation
    String? column
    String bed_parse
    String join
  }
  command <<<
    bedparse join bedfile \
      ~{bed_parse} \
      ~{join} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if defined(column) then ("--column " +  '"' + column + '"') else ""}
  >>>
  parameter_meta {
    annotation: ""
    column: ""
    bed_parse: ""
    join: ""
  }
}