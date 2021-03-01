version 1.0

task BedparseJoinBedfile {
  input {
    String? column
    String? annotation
    String bed_parse
    String join
  }
  command <<<
    bedparse join bedfile \
      ~{bed_parse} \
      ~{join} \
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
    join: ""
  }
  output {
    File out_stdout = stdout()
  }
}