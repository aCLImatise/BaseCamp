version 1.0

task TaxonomyUtilGetLineage {
  input {
    Boolean? show_names
    String? delimiter
    String? db
    String? flags
  }
  command <<<
    taxonomy_util get_lineage \
      ~{flags} \
      ~{if (show_names) then "--show_names" else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""}
  >>>
  parameter_meta {
    show_names: "Show taxon names, not just IDs"
    delimiter: "Delimiter for lineage string"
    db: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}