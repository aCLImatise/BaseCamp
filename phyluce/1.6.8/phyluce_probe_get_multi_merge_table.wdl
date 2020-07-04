version 1.0

task PhyluceProbeGetMultiMergeTable {
  input {
    String? conf
    String? sqlite_database_create
    String? base_tax_on
    String? filter
  }
  command <<<
    phyluce_probe_get_multi_merge_table \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(sqlite_database_create) then ("--output " +  '"' + sqlite_database_create + '"') else ""} \
      ~{if defined(base_tax_on) then ("--base-taxon " +  '"' + base_tax_on + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""}
  >>>
  parameter_meta {
    conf: "A config file mapping names to BED files."
    sqlite_database_create: "A SQLite database to create during integration."
    base_tax_on: "The base taxon to use."
    filter: "A file-type filter to apply to the BED directory of files"
  }
}