version 1.0

task BedparseFilterBedfile {
  input {
    String? column
    String? annotation
    String bed_parse
    String filter
  }
  command <<<
    bedparse filter bedfile \
      ~{bed_parse} \
      ~{filter} \
      ~{if defined(column) then ("--column " +  '"' + column + '"') else ""} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    column: ""
    annotation: ""
    bed_parse: ""
    filter: ""
  }
  output {
    File out_stdout = stdout()
  }
}