version 1.0

task TaxonomyUtilGetLineage {
  input {
    String? delimiter
    String name
  }
  command <<<
    taxonomy_util get_lineage \
      ~{name} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""}
  >>>
  parameter_meta {
    delimiter: "Delimiter for lineage string"
    name: ""
  }
}