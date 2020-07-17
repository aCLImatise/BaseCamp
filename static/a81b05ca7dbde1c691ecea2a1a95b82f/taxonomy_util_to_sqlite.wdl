version 1.0

task TaxonomyUtilToSqlite {
  input {
    String? tax_prefix
    String? taxonomy_dir
  }
  command <<<
    taxonomy_util to_sqlite \
      ~{taxonomy_dir} \
      ~{if defined(tax_prefix) then ("--tax_prefix " +  '"' + tax_prefix + '"') else ""}
  >>>
  parameter_meta {
    tax_prefix: "String to prepend to names of nodes.dmp and names.dmp"
    taxonomy_dir: ""
  }
}