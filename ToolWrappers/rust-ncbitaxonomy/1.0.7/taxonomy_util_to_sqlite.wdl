version 1.0

task TaxonomyUtilToSqlite {
  input {
    File? tax_prefix
    String? db
  }
  command <<<
    taxonomy_util to_sqlite \
      ~{if defined(tax_prefix) then ("--tax_prefix " +  '"' + tax_prefix + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tax_prefix: "String to prepend to names of nodes.dmp and names.dmp"
    db: ""
  }
  output {
    File out_stdout = stdout()
  }
}