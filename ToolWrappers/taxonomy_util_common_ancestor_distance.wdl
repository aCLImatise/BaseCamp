version 1.0

task TaxonomyUtilCommonAncestorDistance {
  input {
    Boolean? only_canonical
    String? db
    String? flags
    Int name_one
  }
  command <<<
    taxonomy_util common_ancestor_distance \
      ~{flags} \
      ~{name_one} \
      ~{if (only_canonical) then "--only_canonical" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""}
  >>>
  parameter_meta {
    only_canonical: "Only consider canonical taxonomic ranks"
    db: ""
    flags: ""
    name_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}