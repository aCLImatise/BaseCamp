version 1.0

task PhyluceProbeGetMultiMergeTable {
  input {
    String? base_tax_on
    File? conf
    String? sqlite_database_create
    File? filter
  }
  command <<<
    phyluce_probe_get_multi_merge_table \
      ~{if defined(base_tax_on) then ("--base-taxon " +  '"' + base_tax_on + '"') else ""} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(sqlite_database_create) then ("--output " +  '"' + sqlite_database_create + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""}
  >>>
  parameter_meta {
    base_tax_on: ""
    conf: "A config file mapping names to BED files."
    sqlite_database_create: "A SQLite database to create during integration."
    filter: "A file-type filter to apply to the BED directory of\\nfiles\\n"
  }
  output {
    File out_stdout = stdout()
  }
}